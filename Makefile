FLAGS=-O2
all:
	gcc Benchmark.c -o 0non-optimized.bin
	gcc $(FLAGS) Benchmark.c -o simple-o2.bin
	gcc -O1 Benchmark.c -o simple-o1.bin
	gcc -O3 Benchmark.c -o simple-o3.bin
	gcc $(FLAGS) Benchmark.c -funroll-loops -o funroll-loops-optimized.bin
	gcc $(FLAGS) BenchmarkManualUnroll4.c  -o unroll_04.bin
	gcc $(FLAGS) BenchmarkManualUnroll8.c  -o unroll_08.bin
	gcc $(FLAGS) BenchmarkManualUnroll16.c  -o unroll_16.bin
	javac *.java

clean:
	rm -rf *.bin *.class
