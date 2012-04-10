import java.io.*;

public class Benchmark{

	public static void main(String[] args) throws Exception{
		long i=0;
    		long a= Long.MAX_VALUE;
		long max = Long.valueOf(args[0]);
		System.out.println(max);
		while ((i++) < max)
        		a=a-i;
		System.out.println(a);
	}

}
