package main

import (
	"fmt"
)

func main() {
	var N, K, X, Y, ans int
	fmt.Scan(&N, &K, &X, &Y)

	if K < N {
		ans = K*X + (N-K)*Y
	} else {
		ans = N * X
	}

	fmt.Println(ans)
}
