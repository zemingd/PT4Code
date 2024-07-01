package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const mod = 1000000007

var cs [][]int

func initCmb(x int) {
	cs = make([][]int, x+1)
	for i := range cs {
		cs[i] = make([]int, i+1)
		cs[i][0], cs[i][len(cs[i])-1] = 1, 1
		for j := 1; j < len(cs[i])-1; j++ {
			cs[i][j] = (cs[i-1][j-1] + cs[i-1][j]) % mod
		}
	}
}

func cmb(x, y int) int {
	if y > x {
		return 0
	}
	return cs[x][y]
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

var wr = bufio.NewWriter(os.Stdout)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	initCmb(max(n-k+1, k-1))
	for i := 1; i <= k; i++ {
		wr.WriteString(strconv.Itoa(cmb(n-k+1, i)*cmb(k-1, i-1)%mod) + "\n")
	}
	wr.Flush()
}
