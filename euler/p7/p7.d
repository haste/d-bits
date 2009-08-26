import tango.io.Stdout;

bool isPrime(int n)
{
	if(!(n % 2))
		return false;
	else
	{
		for(int i=3; i < n / 2; i++)
			if(!(n % i))
				return false;
	}

	return true;
}


void main()
{
	int i = 2;
	int n = 1;

	do
	{
		i++;
		if(isPrime(i))
			n++;
	} while(n != 1e4 + 1);

	Stdout.formatln("{}", i);
}
