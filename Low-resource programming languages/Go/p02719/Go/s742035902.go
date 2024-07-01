package main

import (
	"fmt"
	"math"
)

func main() {
	// N 商品数
	// M 選択数
	// Ai その商品の票数
	var N, K int
	fmt.Scan(&N, &K)
	if N < K {
		fmt.Println(N)
	} else if N == K || N%K == 0 {
		fmt.Println(0)
	} else {
		x := N
		for {
			r := x - K
			if r < 0 {
				fmt.Println(int(math.Abs(float64(r))))
				break
			} else if r == 0 {
				fmt.Println(0)
			} else {
				x = r
				fmt.Println(N / K)
				break
			}
		}
	}

}
