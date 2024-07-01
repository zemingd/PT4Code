// うまいやり方がわからん 愚直でいいや
// -> なんかミスったぽい たぶん順番も関係するからか？
// 仕方ないが順番逆のやつも用意して比較
// -> なぜか変わらずWA
// PからX QからYとったものをあわせて小さいものから置き換えてみる（にぶたん

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
	S := append(P[:X], Q[:Y]...)
	sort.Sort(sort.Reverse(sort.IntSlice(S)))
	for _, r := range R {
		idx := sort.Search(X+Y, func(j int) bool {
			return r > S[j]
		})
		if idx == X+Y {
			break
		}
		S[idx] = r
	}
	ans := 0
	for _, s := range S {
		ans += s
	}
	fmt.Fprintln(out, ans)
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
