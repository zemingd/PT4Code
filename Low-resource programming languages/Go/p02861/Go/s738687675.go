package main

import (
	"fmt"
	"math"
)

func fact(n int) int {
	if n == 0 {
		return 1
	}
	return n * fact(n-1)
}

func routepath(f []int, m [][]int, rp float64) float64 {
	var sum float64
	for i, t := range m {
		n_m := make([][]int, len(m))
		copy(n_m, m)
		n_m = append(n_m[:i], n_m[i+1:]...)

		var n_rp float64
		if f != nil {
			x := (f[0] - t[0])
			y := (f[1] - t[1])
			n_rp = math.Sqrt(float64(x * x + y * y))
		}

		if len(n_m) <= 0 {
			sum += n_rp + rp
			continue
		}

		sum += routepath(t, n_m, n_rp + rp)
	}
	return sum
}

func main() {
	var max int
	fmt.Scan(&max)

	var buf [][]int
	for {
		if !(max > len(buf)) {
			break
		}
		raw := make([]int, 2)
		fmt.Scanf("%d %d", &(raw[0]), &(raw[1]))

		buf = append(buf, raw)
	}

	fmt.Printf("%010.8f", routepath(nil, buf, 0) / float64(fact(max)))
}