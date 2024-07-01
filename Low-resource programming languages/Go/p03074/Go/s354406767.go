// このしゃくとり最強に難しくない？
// しゃくとりで解くのゲキムズなので別の方法でやる
package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()
	N, K := nextInt(), nextInt()
	S := chars(next())
	boundary := []int{}
	j := 0
	for i := 1; i < N; i++ {
		if S[i-1] != S[i] {
			boundary = append(boundary, i-j)
			j = i
		}
	}
	boundary = append(boundary, N-j)
	// A[0]=0のとき
	//	00..11..00..11..00... -> 最初だけK*2, 次からはK*2+1の範囲
	// A[0]=1のとき最初は2K個、次からは2K+1個の範囲
	//	11..00..11..00..11.. -> K*2+1個の範囲
	ans := 0
	if S[0] == "0" {
		// 最初に長さ0として番兵をおいて帳尻合わせ
		boundary = append([]int{0}, boundary...)
	}
	r := 0
	tmp := 0
	for l := 0; l < len(boundary); {
		for r < len(boundary) && (r-l) < 2*K+1 {
			tmp += boundary[r]
			r++
		}
		ans = max(ans, tmp)
		if l+1 >= len(boundary) { // なんだよこれアホかアドホックすぎひん
			break
		}
		tmp -= (boundary[l] + boundary[l+1])
		l += 2
		if l >= r {
			r++
		}
	}
	fmt.Fprintln(out, ans)
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

func chars(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}
