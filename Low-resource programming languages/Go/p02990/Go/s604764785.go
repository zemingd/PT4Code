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

// (K-1)C(i-1) * (N-K+1)C(i)

type combi struct {
	fac  []int
	finv []int
	inv  []int
	mod  int
}

func (c *combi) init(n int, m int) {
	c.fac = make([]int, n)
	c.finv = make([]int, n)
	c.inv = make([]int, n)
	c.mod = m

	c.fac[0] = 1
	c.fac[1] = 1
	c.finv[0] = 1
	c.finv[1] = 1
	c.inv[1] = 1
	for i := 2; i < n; i++ {
		c.fac[i] = c.fac[i-1] * i % c.mod
		c.inv[i] = c.mod - c.inv[c.mod%i]*(c.mod/i)%c.mod
		c.finv[i] = c.finv[i-1] * c.inv[i] % c.mod
	}
}

func (c *combi) combi(n, k int) int {
	if n < k {
		return 0
	}
	if n < 0 || k < 0 {
		return 0
	}
	return c.fac[n] * (c.finv[k] * c.finv[n-k] % c.mod) % c.mod
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, 1e+6)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	k := nextInt()
	var c combi
	mod := int(1e9) + 7
	c.init(n, mod)
	for i := 0; i < k; i++ {
		if n-k >= i && k-1 >= i {
			debugf("i: %d, n:%d, k:%d\n", i, n, k)
			b := c.combi(k-1, i)
			r := c.combi(n-k+1, i+1)
			debugf("%d: %d * %d = %d\n", i, b, r, (b*r)%mod)
			_, _ = fmt.Fprintf(writer, "%d\n", (b*r)%mod)
		} else {
			break
		}
	}
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func answer2(reader io.Reader, writer io.Writer) {
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

	for i := 0; i < k; i++ {
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
