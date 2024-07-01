// うまいやり方がわからん 愚直でいいや
// ->なんかミスったぽい たぶん順番も関係するからか？
// 仕方ないが順番逆のやつも用意して比較
package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()
	X, Y, A, B, C := nextInt(), nextInt(), nextInt(), nextInt(), nextInt()
	P, Q, R := nextInts(A), nextInts(B), nextInts(C)
	sort.Sort(sort.Reverse(sort.IntSlice(P)))
	sort.Sort(sort.Reverse(sort.IntSlice(Q)))
	sort.Sort(sort.Reverse(sort.IntSlice(R)))
	var f func(a, b, c []int) int
	f = func(S, T, U []int) int {
		ai, ci := 0, 0
		ans := 0
		for i := 0; i < X; i++ {
			if ai < len(S) && ci < len(U) {
				if S[ai] >= U[ci] {
					ans += S[ai]
					ai++
				} else {
					ans += U[ci]
					ci++
				}
			} else {
				if ai == len(S) {
					ans += U[ci]
					ci++
				} else if ci == len(U) {
					ans += S[ai]
					ai++
				} else {
					panic("あわわ")
				}
			}
		}
		bi := 0
		for i := 0; i < Y; i++ {
			if bi < len(T) && ci < len(U) {
				if T[bi] >= U[ci] {
					ans += T[bi]
					bi++
				} else {
					ans += U[ci]
					ci++
				}
			} else {
				if bi == len(T) {
					ans += U[ci]
					ci++
				} else if ci == len(U) {
					ans += T[bi]
					bi++
				} else {
					panic("あわわわわ")
				}
			}
		}
		return ans
	}
	ans1, ans2 := f(P, Q, R), f(Q, P, R)
	fmt.Fprintln(out, max(ans1, ans2))
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}

func nextStrings(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = next()
	}
	return ret
}

func chars(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}
