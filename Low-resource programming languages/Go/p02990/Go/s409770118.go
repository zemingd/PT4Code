package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

var sc *bufio.Scanner

const BufferSize = 1024

func nextInt() int {
	if !sc.Scan() {
		panic(nil)
	}
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var production bool

func debugf(format string, v ...interface{}) {
	if !production {
		fmt.Printf(format, v...)
	}
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	m := max(n-k+3, k+3)
	mod := uint64(1e9) + uint64(7)
	dp := make([][]uint64, m)
	for i := 0; i < m; i++ {
		dp[i] = make([]uint64, m)
	}
	for i := 0; i < m; i++ {
		dp[i][0] = 1
		dp[0][i] = 1
	}
	for i := 1; i < m; i++ {
		for j := 1; j < m; j++ {
			dp[i][j] = (dp[i-1][j] + dp[i][j-1]) % mod
		}
	}
	//debugf("%v\n", dp)

	for i := 0; i < n; i++ {
		if i == 0 {
			debugf("%d: %d * %d = %d\n", i, dp[n-k][i+1], dp[k-i-1][i], (dp[n-k][i+1]*dp[k-i-1][i])%mod)
			_, _ = fmt.Fprintf(writer, "%d\n", (dp[n-k][i+1]*dp[k-i-1][i])%mod)
		} else {
			if n-k-i >= 0 && k-i-1 >= 0 {
				debugf("%d: %d * %d = %d\n", i, dp[n-k-i][i+1], dp[k-i-1][i], (dp[n-k-i][i+1]*dp[k-i-1][i])%mod)
				_, _ = fmt.Fprintf(writer, "%d\n", (dp[n-k-i][i+1]*dp[k-i-1][i])%mod)
			} else {
				break
			}
		}
	}

}

func main() {
	production = true
	answer(os.Stdin, os.Stdout)
}
