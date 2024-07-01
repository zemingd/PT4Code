package main

import (
	"fmt"
)

func main() {

	var N, K int
	fmt.Scan(&N, &K)

	ans := exec(N, K)

	fmt.Println(ans)
}

func exec(N, K int) int {
	if N%K == 0 {
		return 0
	}

	num := N % K
	diff := abs(num - K)

	if num < diff {
		return num
	} else {
		return diff
	}
}

func abs(a int) int {
	if a < 0 {
		return -a
	} else {
		return a
	}
}
