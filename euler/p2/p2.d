import tango.io.Stdout;

int[] fibCache = [1:1, 2:1];
ubyte r = 2;

int fib(int n)
{
	if(fibCache.length == n)
	{
		r *= 2;
		fibCache.length = r;
	}

	int m = fibCache[n - 1] + fibCache[n - 2];
	fibCache[n] = m;

	return m;
}

void main()
{
	uint total = 2;
	for(int i = 3; total < 4e6; i++)
	{
		int a = fib(i);

		if(a % 2)
			total += a;
	}

	Stdout.formatln("{}", total);
	return 0;
}
