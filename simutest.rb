r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31 = 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
f0,f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15,f16,f17,f18,f19,f20,f21,f22,f23,f24,f25,f26,f27,f28,f29,f30,f31 = 0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0
pc = 0
cr = 0
stack = []
allorder = []
mem = Array.new(100,0)


def logic_right_shift(num, bit, range=16)
  (num + (num > 0 ? 0 : 2 ** range)) >> bit
end

def logic_left_shift(num, bit, range=16)
  (num + (num > 0 ? 0 : 2 ** range)) << bit
end

def tf_to_i(tf)
  if tf == true
    1
  else
    0
  end
end


fh = open(ARGV[0], "r")
while !fh.eof
  txt = fh.gets.split(/,* +\$*|\n|\t/)
  allorder.push txt
end
fh.close
allorder.delete([])


while (1)
  order = allorder[pc]
  if order[0] == ""
    order.shift
  end

  if order[0] == "mov"
    eval("#{order[1]} = #{order[2]}")
    puts order[1] + " = " + eval("#{order[1]}").to_s
    pc += 1
  end

  if order[0] == "movi"
    eval("#{order[1]} = #{order[2]}")
    puts order[1] + " = " + eval("#{order[1]}").to_s
    pc += 1
  end

  if order[0] == "add" || order[0] == "addi"
    eval("#{order[1]} = #{order[2]} + #{order[3]}")
    puts order[1] + " = " + eval("#{order[1]}").to_s
    pc += 1
  end

  if order[0] == "sub"
    eval("#{order[1]} = #{order[2]} - #{order[3]}")
    puts order[1] + " = " + eval("#{order[1]}").to_s
    pc += 1
  end

  if order[0] == "and" || order[0] == "andi"
    eval("#{order[1]} = #{order[2]} & #{order[3]}")
    puts order[1] + " = " + eval("#{order[1]}").to_s
    pc += 1
  end

  if order[0] == "or" || order[0] == "ori"
    eval("#{order[1]} = #{order[2]} | #{order[3]}")
    puts order[1] + " = " + eval("#{order[1]}").to_s
    pc += 1
  end

  if order[0] == "xor"
    eval("#{order[1]} = #{order[2]} ^ #{order[3]}")
    puts order[1] + " = " + eval("#{order[1]}").to_s
    pc += 1
  end

  if order[0] == "nor"
    eval("#{order[1]} = 1 - (#{order[2]} | #{order[3]})")
    puts order[1] + " = " + eval("#{order[1]}").to_s
    pc += 1
  end

  if order[0] == "not"
    eval("#{order[1]} = 1 - #{order[2]}")
    puts order[1] + " = " + eval("#{order[1]}").to_s
    pc += 1
  end

  if order[0] == "sra"
    eval("#{order[1]} = #{order[2]} >> #{order[3]}")
    puts order[1] + " = " + eval("#{order[1]}").to_s
    pc += 1
  end

  if order[0] == "sll"
    eval("#{order[1]} = logic_left_shift(#{order[2]}, #{order[3]})")
    puts order[1] + " = " + eval("#{order[1]}").to_s
    pc += 1
  end

  if order[0] == "srl"
    eval("#{order[1]} = logic_right_shift(#{order[2]}, #{order[3]})")
    puts order[1] + " = " + eval("#{order[1]}").to_s
    pc += 1
  end

  # if order[0] == "sw"


  if order[0] == "j" || order[0] == "jr"
    pc = eval("#{order[1]}")
    puts pc
  end


  if order[0] == "jmp"
    pc = allorder.index [order[1] + ":"]
    puts "pc = " + pc.to_s
  end

  if order[0] == "slt" || order[0] == "slti"
    eval("#{order[1]} = tf_to_i(#{order[2]} < #{order[3]})")
    pc += 1
  end

  if order[0] == "beq"
    if eval("#{order[1]} == #{order[2]}")
      pc = eval("#{order[3]}")
    else
      pc += 1
    end
  end

  if order[0] == "bne"
    if eval("#{order[1]} != #{order[2]}")
      pc = allorder.index [order[3] + ":"]
      puts order[3]
    else
      pc += 1
    end
  end

  if order[0] == "cmp"
    l = eval("#{order[1]}")
    r = eval("#{order[2]}")
    if l <= r
      cr = 1
    else
      cr = 0
    end
    puts "cmp"
    pc += 1
  end

  if order[0] == "ble"
    if cr == 1
      pc = allorder.index [order[1] + ":"]
    else
      pc += 1
    end
  end

  if order[0].match(/.+:/)
    pc += 1
  end


  if order[0] == "ret"
    puts "return " + r4.to_s
    r4
    break
  end
end
