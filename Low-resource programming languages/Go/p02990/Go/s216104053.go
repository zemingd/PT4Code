package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	const maxWord = (1 << 30)
	buf := []byte{}
	sc.Buffer(buf, maxWord)
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func powMod(x, y, mod int) int {
	if y == 0 {
		return 1
	}

	if y%2 == 0 {
		d := powMod(x, y/2, mod)
		return (d * d) % mod
	} else {
		return (x * powMod(x, y-1, mod)) % mod
	}
}

func calcComb(n, r, mod int) int {
	result := 1
	if r > n-r {
		r = n - r
	}
	for i := n; i > n-r; i-- {
		result *= i
		result %= mod
	}
	for i := 2; i <= r; i++ {
		result *= powMod(i, mod-2, mod)
		result %= mod
	}
	return result
}

func solve(n, k int) int {
	mod := 1000000000 + 7
	red := n - k
	for i := 1; i <= k; i++ {
		if red+1 < i {
			fmt.Println(0)
			continue
		}
		blueSplit := calcComb(k-1, i-1, mod)
		ans := calcComb(red+1, i, mod) * blueSplit
		fmt.Println(ans)
	}
	return 0
}

func main() {
	n, _ := strconv.Atoi(input())
	k, _ := strconv.Atoi(input())
	solve(n, k)
}
