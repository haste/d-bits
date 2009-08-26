import tango.io.Stdout;

int reverse(int n)
{
	int rev = 0;
	int i = 0;

	while(n != 0)
	{
		rev = (rev * 10) + (n % 10);
		n /= 10;
	}

	return rev;
}

void main()
{
	int n = 999;
	int m = 0;
	for(int i=n; i > 90; i--)
		for(int j=n; j > 90; j--)
		{
			int r = j * i;
			if(r > m && r == reverse(r))
			{
				m = r;
			}
		}

	Stdout.formatln("{}", m);
}
