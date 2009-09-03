/*
 * Solution to Practice Problem A: Alien Numbers
 * http://code.google.com/codejam/contest/dashboard?c=32003
 */
import tango.io.Stdout,
	   tango.io.device.File;
import Array = tango.core.Array;
import Text = tango.text.Util;

uint pow(uint b, uint n)
{
	if(n == 0)
		return 1;
	else if(n == 1)
		return b;

	uint o = 1;

	while(n != 0)
	{
		if(n & 1)
			o *= b;

		b *= b;
		n >>= 1;
	}

	return o;
}

uint toBase10(char[] number, char[] alien)
{
	uint base10;

	number = number.dup.reverse;

	for(int i; i < number.length; i++)
	{
		uint idx = Array.find(alien, number[i]);
		base10 += (idx * pow(alien.length, i));
	}

	return base10;
}

char[] convert(uint number, char[] to)
{
	int base = to.length;
	char[] alien;

	while(number != 0)
	{
		alien ~= to[number % base];
		number /= base;
	}

	return alien.reverse;
}

void main(char[][] args)
{
	if (args.length == 2)
	{
		File file = new File(args[1]);
		char[] src = new char [file.length];
		file.read(src);
		file.close;

		char[][] lines = Text.splitLines(src);

		for(int i = 1; i < lines.length - 1; i++)
		{
			char[][] data = Text.split(lines[i], " ");
			Stdout.formatln("Case #{}: {}", i, convert(toBase10(data[0], data[1]), data[2]));
		}
	}
}
