package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	// 割れない数字の組み合わせを作る = 一つ大きい数字で割る (最後に1が余るので、nの最大数は割り切れる)
	// 1 + 2 + 3 + 4 + ... + n-1

	fmt.Println((n * (n - 1)) / 2)
}
