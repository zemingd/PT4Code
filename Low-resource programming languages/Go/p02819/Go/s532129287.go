package main

import (
	"fmt"
	"math"
)

// trial division approach
// n > 2
// ２から√nまで試し割りする。
// 割り切れた場合その値の素数性をチェック。
// 素数の場合スライスに追加する。
// 最大値を返すため、スライスの一番最後を返す
func trialDivision(n int) int {
	var ans int
	for i := n; ; i++ {
		if primeNaive(i) {
			ans = i
			break
		}
	}
	return ans
}

func primeNaive(n int) bool {
	if n < 2 {
		return false
	}
	for i := 2; i <= int(math.Sqrt(float64(n))); i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func main() {
	var x int
	fmt.Scan(&x)
	fmt.Println(trialDivision(x))
}
