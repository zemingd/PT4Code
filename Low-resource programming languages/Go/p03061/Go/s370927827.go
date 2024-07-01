package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

func gcd(a, b int) int {
	if a%b == 0 {
		return b
	}
	return gcd(b%a, a)
}

func main() {
	var N int
	fmt.Scan(&N)
	A := make([]int, N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := range A {
		A[i] = nextInt(sc)
	}
	// sort.Ints(A)
	GCDL := make([]int, N)
	GCDR := make([]int, N)
	GCDL[0] = A[0]
	for i := 1; i < N; i++ { // 前から計算した累積GCD
		GCDL[i] = gcd(GCDL[i-1], A[i])
	}
	GCDR[N-1] = A[N-1]
	for i := N - 2; i >= 0; i-- { // 後ろから計算した累積GCD
		GCDR[i] = gcd(GCDR[i+1], A[i])
	}
	// fmt.Println("N", N, "GCDL", GCDL, "GCDR", GCDR)
	ans := 1
	for i := 0; i < N; i++ { // i番目の数を除いた場合の最大のGCDを求める
		var t int
		if i == 0 {
			t = GCDR[1]
		} else if i == N-1 {
			t = GCDL[N-2]
		} else {
			t = gcd(GCDL[i-1], GCDR[i+1])
		}
		ans = max(ans, t)
	}
	fmt.Println(ans)
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
