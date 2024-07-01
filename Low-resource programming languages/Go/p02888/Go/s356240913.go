package main

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

func main() {
	var N int
	fmt.Scan(&N)
	L := make([]int, N)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < N; i++ {
		L[i] = nextInt(sc)
	}
	sort.Ints(L)
	ans := 0
	for i := 0; i < N; i++ {
		for j := i + 1; j < N; j++ {
			A, B := L[i], L[j] // A<B
			// 三角形の成立条件 B<C<A+B を満たすCを２分探索で探す
			AB := A + B
			r := lowerbound(L, AB) // 半開区間で考える
			l := j + 1
			ans += max(0, r-l)
		}
	}
	fmt.Println(ans)
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
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
