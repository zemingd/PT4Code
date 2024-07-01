package main

// ABC077C - Snuke Festival
// https://atcoder.jp/contests/abc077/tasks/arc084_a

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}
func lowerbound(v []int, k int) int {
	l, r := -1, len(v)
	for r-l > 1 {
		m := l + (r-l)/2
		if v[m] >= k {
			r = m
		} else {
			l = m
		}
	}
	return r
}

func upperbound(v []int, k int) int {
	l, r := -1, len(v)
	for r-l > 1 {
		m := l + (r-l)/2
		if v[m] > k {
			r = m
		} else {
			l = m
		}
	}
	return r
}

func main() {
	var N int
	fmt.Scan(&N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = nextInt(sc)
	}
	B := make([]int, N)
	for i := 0; i < N; i++ {
		B[i] = nextInt(sc)
	}
	C := make([]int, N)
	for i := 0; i < N; i++ {
		C[i] = nextInt(sc)
	}
	sort.Ints(A)
	sort.Ints(C)
	ans := 0
	for j := 0; j < len(B); j++ {
		// A<B[j]となる数とB[j]<Cとなる数の積を求める。
		// 真ん中の値を固定するのが核心
		x := lowerbound(A, B[j])
		y := upperbound(C, B[j])
		ans += x * (len(C) - y)
	}
	fmt.Println(ans)
}
