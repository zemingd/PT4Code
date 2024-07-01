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

func comb(a, b int) int {
	if a < b {
		return 0
	}

	res := 1
	for i := 0; i < b; i++ {
		res *= a
		a--
	}
	for i := b; i > 0; i-- {
		res /= i
	}

	return res % MOD
}

func main() {
	sc.Split(bufio.ScanWords)

	n, k := nextInt(), nextInt()
	red := n-k

	for i := 1; i <= k; i++ {
		fmt.Println((comb(red+1, i) * comb(k-1, i-1)) % MOD)
	}
}