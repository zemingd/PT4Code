package main

import (
	"fmt"
)

func main() {
	var H, W int
	fmt.Scan(&H, &W)

	A := make([]int, H*W)
	for i := 0; i < H*W; i++ {
		fmt.Scan(&A[i])
	}

	move := func(p, q int) {
		A[p]--
		A[q]++
	}

	R := make([]int, 0)

	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			p := i*W + j
			if A[p]%2 == 0 {
				continue
			}
			if j+1 < W {
				R = append(R, i+1, j+1, i+1, j+2)
				move(p, p+1)
				continue
			}
			if i+1 < H {
				R = append(R, i+1, j+1, i+2, j+1)
				move(p, (i+1)*W+j)
				continue
			}
		}
	}

	fmt.Println(len(R) / 4)
	for i := 0; i < len(R); i += 4 {
		fmt.Println(R[i], R[i+1], R[i+2], R[i+3])
	}
}
