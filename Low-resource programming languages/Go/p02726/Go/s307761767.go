package main

import (
	"fmt"
)

func main() {
	var n, x, y int
	fmt.Scanf("%d %d %d", &n, &x, &y)

	dL := x - 1
	dR := n - y

	dLRMin := dL
	if dR < dL {
		dLRMin = dR
	}
	dLRMin++

	maxKWithXY := dL + 1 + dR

	for k := 1; k <= n-1; k++ {
		base := n - k

		plus := 0
		if k < dLRMin {
			plus = k
		} else if k <= maxKWithXY-dLRMin {
			plus = dLRMin
		} else if k <= maxKWithXY {
			plus = maxKWithXY - k + 1
		}

		minus := 0
		if n-k < dLRMin {
			minus = n - k
		} else if n-k <= maxKWithXY-dLRMin {
			minus = dLRMin
		} else if n-k <= maxKWithXY {
			minus = maxKWithXY - (n - k) + 1
		}

		answer := base + plus - minus
		fmt.Println(answer)
	}
}
