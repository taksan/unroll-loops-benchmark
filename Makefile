FLAGS=-O2
all:
	gcc Benchmark.c -o non-optimized
	gcc $(FLAGS) Benchmark.c -o simple-o2
	gcc $(FLAGS) Benchmark.c -funroll-loops -o optimized
	gcc $(FLAGS) BenchmarkManualUnroll.c  -o mk1
	gcc $(FLAGS) BenchmarkManualUnroll_Mk2.c  -o mk2
	gcc $(FLAGS) BenchmarkManualUnroll_Mk3.c  -o mk3
	gcc $(FLAGS) BenchmarkManualUnroll_Mk4.c  -o mk4

clean:
	rm -rf normal optimized mk*
