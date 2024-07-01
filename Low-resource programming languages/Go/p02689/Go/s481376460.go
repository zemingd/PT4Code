package main

import (
	"fmt"
)

func main() {
	var N, M int
	fmt.Scanf("%d %d", &N, &M)
	H := make([]int, N)
	heightPeakEnableds := make([]bool, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &H[i])
		heightPeakEnableds[i] = true
	}

	for i := 0; i < M; i++ {
		var a, b int
		fmt.Scanf("%d %d", &a, &b)
		if H[a-1] > H[b-1] {
			heightPeakEnableds[b-1] = false
		} else if H[a-1] < H[b-1] {
			heightPeakEnableds[a-1] = false
		} else {
			heightPeakEnableds[b-1] = false
			heightPeakEnableds[a-1] = false
		}
	}

	r := 0
	for _, heightPeakEnabled := range heightPeakEnableds {
		if heightPeakEnabled {
			r++
		}
	}
	fmt.Println(r)
}
