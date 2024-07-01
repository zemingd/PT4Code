package main

import (
	"fmt"
	"io"
	"os"
)

func Solve(stdin io.Reader, stdout io.Writer) {
	var n int
	_, _ = fmt.Fscanf(stdin, "%d\n", &n)

	// a[i]: i の倍数の和の偶奇
	a := make([]int, n)
	// b[i]: 箱[i] に入っている玉の数（0 or 1)
	b := make([]int, n)

	for i := 0; i < n; i++ {
		var tmp int
		_, _ = fmt.Fscan(stdin, &tmp)
		a[i] = tmp
	}

	ballNum := 0

	// n / 2 < i <= n において i の倍数が書かれた箱は 箱[i] だけなのでa[i] とb[i] は一致する
	for i := n - 1; i > n/2; i-- {
		b[i] = a[i]
		ballNum += b[i]
	}

	// 添字（0 origin）と問題文のi（1 origin）の違いに注意
	for i := n / 2; i >= 0; i-- {
		// times: i ~ n の範囲でi の何倍まで存在するか
		times := n / (i + 1)
		tmpSum := 0
		for j := (i+1)*times - 1; j > i; j -= i + 1 {
			tmpSum += b[j]
		}
		b[i] = (tmpSum + a[i]) % 2
		ballNum += b[i]
	}

	_, _ = fmt.Fprintf(stdout, "%d\n", ballNum)

	if ballNum != 0 {
		for i := 0; i < n; i++ {
			if b[i] != 0 {
				_, _ = fmt.Fprintf(stdout, "%d ", i+1)
			}
		}
		_, _ = fmt.Fprint(stdout, "\n")
	}
}

func main() {
	Solve(os.Stdin, os.Stdout)
	return
}
