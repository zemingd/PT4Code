package main

import (
	"fmt"
)

func main() {
	var N, A, B int64
	fmt.Scan(&N, &A, &B)

	var sum, blue, res int64
	for i := 0; i < 1000; i++ {
		sum += +A
		blue += A
		if sum >= N {
			res = blue - (sum - N)
			break
		}
		sum += +B
		if sum >= N {
			// fmt.Println(blue, sum, N)
			res = blue
			break

		}
		if i == 999 {
			res = blue
		}
	}
	fmt.Println(res)

}
