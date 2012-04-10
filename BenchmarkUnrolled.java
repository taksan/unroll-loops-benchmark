import java.io.*;

public class BenchmarkUnrolled {

	public static void main(String[] args) throws Exception{
		long i=0;
    		long a= Long.MAX_VALUE;
		long max = Long.valueOf(args[0]);
		System.out.println(max);

		long max_4 = max - max%4;
		while ((i++) < max_4) {
			a=a-i++;
			a=a-i++;
			a=a-i++;
			a=a-i;
		}
		while ((i++) < max) {
			a=a-i;
		}

		System.out.println(a);
	}

}
