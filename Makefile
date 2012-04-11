FLAGS=-O2
all:
	gcc Benchmark.c -o non-optimized.bin
	gcc $(FLAGS) Benchmark.c -o simple-o2.bin
	gcc $(FLAGS) Benchmark.c -funroll-loops -o optimized.bin
	gcc $(FLAGS) BenchmarkManualUnroll.c  -o mk1.bin
	gcc $(FLAGS) BenchmarkManualUnroll_Mk2.c  -o mk2.bin
	gcc $(FLAGS) BenchmarkManualUnroll_Mk3.c  -o mk3.bin
	gcc $(FLAGS) BenchmarkManualUnroll_Mk4.c  -o mk4.bin
	javac *.java

clean:
	rm -rf *.bin *.class
