package main

import (
	"fmt"
)

func main() {
	var n, x, y int
	fmt.Scanf("%d %d %d", &n, &x, &y)

	// index is from 1 to n - 1 (do not use 0)
	countForK := make([]int, n)

	for i := 1; i <= n-1; i++ {
		for j := i + 1; j <= n; j++ {
			dNormal := j - i

			dXToI := x - i
			if dXToI < 0 {
				dXToI = -dXToI
			}
			dYToJ := y - j
			if dYToJ < 0 {
				dYToJ = -dYToJ
			}
			dShortcut := dXToI + 1 + dYToJ

			k := dNormal
			if dShortcut < dNormal {
				k = dShortcut
			}

			countForK[k]++
		}
	}

	for k := 1; k <= n-1; k++ {
		fmt.Println(countForK[k])
	}
}
