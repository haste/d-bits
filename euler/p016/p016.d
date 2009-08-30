import tango.io.Stdout;

void main()
{
	int base = 10;

	int[] digit = [0, 1];
	ushort r = 2;

	int carry, d;
	int last = 1;

	for(int n = 1; n <= 1000; n++)
	{
		carry = 0;

		for(int i = 1; i <= last; i++)
		{
			d = digit[i] * 2 + carry;
			digit[i] = d % base;
			carry = d / base;
		}

		while(carry > 0)
		{
			last += 1;
			if(digit.length == last)
			{
				r *= 2;
				digit.length = r;
			}

			digit[last] = carry % base;
			carry /= base;
		}
	}

	int sum;
	foreach(int i; digit)
		sum += i;

	Stdout.formatln("{}", sum);
}
