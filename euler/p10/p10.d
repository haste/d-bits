import tango.io.Stdout;
import tango.math.Math;

void main()
{

	int n = 2000000;
	ulong s = 0;

	bool primes[] = [false];
	primes.length = n+1;

	for (int i=2; i < n+1; i++)
		primes[i] = true;

	for (int i=2; i < sqrt(cast(real)(n+1)); i++)
		if (primes[i])
			for (int j=i*i; j < n+1; j += i)
				primes[j] = false;

	for (int i = 0; i < n+1; i++)
		if (primes[i])
			s += i;

	Stdout.formatln("{}", s);
}
