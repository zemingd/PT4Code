package main

import (
	"fmt"
	"io"
	"math"
	"os"
)

func calcPow(b, t float64) float64 {
	i := 0.0
	for {
		if b * math.Pow(2, i) >= t {
			return i
		}
		i++
	}
}

func solve(w io.Writer, r io.Reader) {
	var N, K float64
	fmt.Scan(&N, &K)

	var min float64
	if N < K {
		min = N
	} else {
		min = K - 1
	}

	ans := 0.0
	for i := 0.0; i < min ; i++ {
		p := calcPow(i+1, K)
		ans += math.Pow(0.5, p)/N
	}
	if min < N {
		ans += (N - min)/N
	}

	fmt.Fprintln(w, ans)
}

func main() {
	solve(os.Stdout, os.Stdin)
}