package main

import (
	"fmt"
)

func main() {
	var n, x, y int
	fmt.Scanf("%d %d %d", &n, &x, &y)

	dM := y - x
	dL := x - 1
	dR := n - y

	dLRMin := dL
	if dR < dL {
		dLRMin = dR
	}

	for k := 1; k <= n-1; k++ {
		base := n - k

		plusCandidates := []int{k, dLRMin + 1, n - dM - k + 1}
		plus := plusCandidates[0]
		for _, p := range plusCandidates {
			if p < plus {
				plus = p
			}
		}
		if plus < 0 {
			plus = 0
		}

		minusCandidates := []int{k - dM + 1, dLRMin + 1, n - k}
		minus := minusCandidates[0]
		for _, m := range minusCandidates {
			if m < minus {
				minus = m
			}
		}
		if minus < 0 {
			minus = 0
		}

		answer := base + plus - minus
		fmt.Println(answer)
	}
}
