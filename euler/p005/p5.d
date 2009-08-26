import tango.io.Stdout;

bool div(int n)
{
	for(int i = 20; i != 10; i--)
	{
		if(n % i != 0)
			return false;
	}

	return true;
}

void main()
{
	int i = 2520;
	do
	{
		i+=20;
	} while(!div(i))

	Stdout.formatln("{}", i);
}
