import tango.io.Stdout;

void main()
{
	uint total = 0;

	for(int i = 3; i < 1e4; i++)
	{
		if(i % 3 | i % 5)
			total = total + i;
	}

	Stdout.formatln("Total: {}", total);
	return 0;
}
