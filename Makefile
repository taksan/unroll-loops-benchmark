FLAGS=-O2
all:
	gcc Benchmark.c -o non-optimized.bin
	gcc $(FLAGS) Benchmark.c -o simple-o2.bin
	gcc -O1 Benchmark.c -o simple-o1.bin
	gcc -O3 Benchmark.c -o simple-o3.bin
	gcc $(FLAGS) Benchmark.c -funroll-loops -o optimized.bin
	gcc $(FLAGS) BenchmarkManualUnroll.c  -o unroll_4_naive.bin
	gcc $(FLAGS) BenchmarkManualUnroll4.c  -o unroll_4.bin
	gcc $(FLAGS) BenchmarkManualUnroll8.c  -o unroll_8.bin
	gcc $(FLAGS) BenchmarkManualUnroll16.c  -o unroll_16.bin
	javac *.java

clean:
	rm -rf *.bin *.class
