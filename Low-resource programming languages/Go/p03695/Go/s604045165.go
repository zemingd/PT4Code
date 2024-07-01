package main

import (
	"fmt"
)

func min(x, y int) int {
	if x > y {
		return y
	}
	return x
}
func main() {
	var N int
	var R [9]int

	fmt.Scanf("%d", &N)
	for i := 0; i < N; i++ {
		var a int
		fmt.Scanf("%d", &a)
		switch {
		case a < 400:
			R[0] += 1
		case a < 800:
			R[1] += 1
		case a < 1200:
			R[2] += 1
		case a < 1600:
			R[3] += 1
		case a < 2000:
			R[4] += 1
		case a < 2400:
			R[5] += 1
		case a < 2800:
			R[6] += 1
		case a < 3200:
			R[7] += 1
		default:
			R[8] += 1
		}
	}
	ret := 0
	for i := 0; i < 8; i++ {
		if R[i] > 0 {
			ret += 1
		}
	}
	if R[8] > 0 && ret == 0 {
		fmt.Println(1, min(8, ret+R[8]))
	} else {
		fmt.Println(ret, min(8, ret+R[8]))
	}

}
