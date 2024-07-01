// 参考: https://atcoder.jp/contests/abc165/submissions/12633891
// mailさんありがとうございました。

package main

import (
	"fmt"
	"math"
)

func main() {
	var A, B, N int
	fmt.Scan(&A, &B, &N)

	var x int = int(math.Min(float64(B-1), float64(N)))
	fmt.Println(f(A, B, x))
}

// f は、まんま数学の関数
func f(A int, B int, x int) int {
	return (A * x / B) - A*(x/B)
}
