// Nothing like the smell of bruteforce in the morning!
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

int main()
{
	ulong n = 600851475143;
	int m = 0;

	for(int i = 2; i*i < n; i++)
	{
		if(n % i == 0 && isPrime(i) && i > m)
			m = i;
	}

	Stdout.formatln("{}", m);

	return 0;
}
