package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

const MOD = 1000000007

func initComb(n, k int) [][]int {
	max := n-k+1
	if k-1 > max {
		max = k-1
	}

	c := make([][]int, max+1)
	for i := 0; i <= max; i++ {
		c[i] = make([]int, i+1)
		c[i][0], c[i][i] = 1, 1
		for j := 1; j < i; j++ {
			c[i][j] = (c[i-1][j-1] + c[i-1][j]) % MOD
		}
	}

	return c
}

func main() {
	sc.Split(bufio.ScanWords)

	n, k := nextInt(), nextInt()
	red := n-k

	comb := initComb(n, k)
	for i := 1; i <= k; i++ {
		fmt.Println((comb[red+1][i] * comb[k-1][i-1]) % MOD)
	}
}