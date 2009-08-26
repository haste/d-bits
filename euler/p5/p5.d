import tango.io.Stdout;

bool div(int n)
{
	for(int i = 11; i != 20; i++)
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
		if(div(i))
			break;

		i += 1;
	} while(true);

	Stdout.formatln("{}", i);
	
}
