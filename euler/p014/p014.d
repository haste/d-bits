import tango.io.Stdout;

uint even(uint n)
{
	return n/2;
}

uint odd(uint n)
{
	return (3 * n) + 1;
}

uint seq(uint n)
{
	uint i;

	while(n != 1)
	{
		if(!(n & 1))
			n = even(n);
		else
			n = odd(n);

		i++;
	}

	return i;
}

void main()
{
	int i = 13;
	uint n, m, l;
	for(; i <= 1000000; i++)
	{
		n = seq(i);
		if(n > m)
		{
			l = i;
			m = n;
		}
	}
	Stdout.formatln("{}", l);
}
