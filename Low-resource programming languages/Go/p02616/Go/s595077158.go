package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	iv, _ := strconv.Atoi(sc.Text())
	return iv
}

func init() {
	sc.Split(bufio.ScanWords)
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func main() {
	n, _ := scanInt(), scanInt()
	a := make([]int, n)
	for i := range a {
		a[i] = scanInt()
	}
	sort.Sort(sort.Reverse(sort.IntSlice(a)))

	const mod = 1000000007
	xs := make([]int, n+1)
	xs[0] = 1
	for i := 1; i <= n; i++ {
		xs[i] = xs[i-1] * a[i-1]
		xs[i] %= mod
	}
	if v := xs[len(xs)-2]; v < 0 {
		fmt.Println((v + mod) % mod)
	} else {
		fmt.Println(v % mod)
	}
}
