import tango.io.Stdout;

int sumSquares(int n)
{
	int r = 0;

	for(int i = 1; i <= n; i++)
		r += i * i;

	return r;
}

int squareSum(int n)
{
	int r = 0;

	for(int i = 1; i <= n; i++)
		r += i;

	return r * r;
}

void main()
{
	int n = 100;
	Stdout.formatln("{}", squareSum(n) - sumSquares(n));
}
