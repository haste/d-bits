import tango.io.Stdout;

void main()
{
	for(int a; a < 500;a++)
		for(int b; a + b < 1e3;b++)
		{
			for(int c; c < 500;c++)
			{
				if(a + b + c == 1e3 && a * a + b * b == c * c)
				{
					Stdout.formatln("{}", a * b * c);
					return;
				}
			}
		}
}
