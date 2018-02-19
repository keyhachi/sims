cp ../main ./
gcc -m32 -o sim ../sim3kb.c -lm

exec_tortesia(){
	#tortesia -> x86 で実行
	./main -d $1 -noinline -t -o o_tortesia.s > /dev/null
	python ../tortesia2x86.py < o_tortesia.s > o_tortesia2x86.s
	nasm o_tortesia2x86.s -f elf32 -g -o out.o
	gcc -m32 -nostdlib out.o -o a.out
	if [ -z $3 ]; then
		./a.out > $2
	else
		./a.out < $3 > $2
	fi
}

exec_sim(){
	./main -d $1 -noinline -t -o o_sim.s > /dev/null
	if [ -z $3 ]; then
		./sim o_sim.s > $2
	else
		./sim o_sim.s < $3 > $2
	fi
}


cat test_order.txt | while read file input
do
	if [ -z $file ]; then
		break
	fi
	echo "---------------" $file "----------------"
	cat $file

	#exec_ocaml $file oa.txt $input
	#exec_x86 $file oo.txt $input
	exec_tortesia $file oa.txt $input
	exec_sim $file oo.txt $input

	#比較
	if diff oo.txt oa.txt; then
		#cat oo.txt
		echo "ok"
	else
		echo "test failed"
		break
	fi
	#break
	rm tmp.ml a.out oo.txt oa.txt o_tortesia.s o_x86.s o_tortesia2x86.s
done
