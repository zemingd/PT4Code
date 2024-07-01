package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// AOJ - ALDS1
// ALDS1_1_D - Max Profit (最大の利益)
// https://onlinejudge.u-aizu.ac.jp/courses/lesson/1/ALDS1/1/ALDS1_1_D

// 問題の概略
// R0,R1,....,Rn-1のn個の数が与えられた時にRj-Ri (ただしj > i)の最大値を求めよ
// 制約：
// 2 <= n <= 200,000
// 1 <= Ri <= 10^9

// 方針:
// Riのそれぞれについて、Ri-1までの最小値との差をとり、その最大値を答えとすればよいが、これはO(N^2)で間に合わない。
// 実はi-1までの最小値を追跡しておき、それとRiの差をとって利益（損失の場合もある）の最大値を追跡すればよい。これはO(N)で間に合う。

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	n := nextInt(sc)
	a := make([]int, n)
	for i := range a {
		a[i] = nextInt(sc)
	}
	minv := a[0]
	maxv := -(int(1e9) + 1)
	for i := 1; i < n; i++ {
		maxv = max(maxv, a[i]-minv)
		minv = min(minv, a[i])
	}
	fmt.Println(maxv)
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

