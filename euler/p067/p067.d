import tango.io.Stdout,
	   tango.io.device.File;

import Integer = tango.text.convert.Integer;
import Text = tango.text.Util;

void main()
{
	File file = new File ("triangle.txt");
	char[] src = new char [file.length];
	file.read(src);
	file.close;

	char[][] lines = Text.splitLines(src);
	int[100][100] data;

	for(int i; i < lines.length - 1; i++)
	{
		char[][] line = Text.split(lines[i], " ");
		for(int j; j < line.length; j++)
			data[i][j] = Integer.toInt(line[j]);
	}

	for(int i = data.length - 2; i >= 0; --i)
		for(int j = 0; j <= i; ++j)
		{
			int v = (data[i+1][j] < data[i+1][j+1]);
			data[i][j] += data[i+1][j+v];
		}

	Stdout(data[0][0]).newline;
}
