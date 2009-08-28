import tango.io.Stdout;
import tango.math.Math;

int fact(int n)
{
	int o = 2;
	for(int i=1; i * i <= n; ++i)
	{
		if(!(n % i))
		{
			if(i * i == n)
				o += 1;
			else
				o += 2;
		}
	}

	return o;
}


void main()
{
	int i = 1;
	int n;

	do
	{
		n = i * (i + 1) / 2;
		i++;
	} while(fact(n) < 500)

	Stdout.formatln("{}", n);
}
