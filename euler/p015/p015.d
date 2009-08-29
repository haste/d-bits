/*
 * Suddenly a wild pascal triangle appears! It could easily have been solved
 * with 40! / (20!)^2, but where's the fun in that? It was fun solving the
 * 1x1 - 3x3 with pen and paper tho' :D.
 */

import tango.io.Stdout;

ulong g[21][21] = [0];

void main() {
	int i = 0;
	int j = 0;

	for (i = 0; i < 20; ++i) {
		g[i][0] = 1;
		g[0][i] = 1;
	}

	for (i = 1; i <= 20; ++i) {
		for (j = 1; j < i; ++j) {
			g[i][j] = g[i - 1][j] + g[i][j - 1];
			g[j][i] = g[j - 1][i] + g[j][i - 1];
		}
		g[i][i] = g[i - 1][i] + g[i][i - 1];

		Stdout.formatln("{}x{} {}", i, i, g[i][i]);
	}
}
