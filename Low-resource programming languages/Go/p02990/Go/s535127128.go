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
	res := 1
	for i := 0; i < b; i++ {
		res = mul(res, a)
		a--
	}
	for i := b; i > 0; i-- {
		res = div(res, i)
	}

	return res % MOD
}

func mul(a, b int) int {
	return ((a % MOD) * (b % MOD)) % MOD
}

func pow(a, b int) int {
	switch {
	case b == 0:
		return 1
	case b == 1:
		return a % MOD
	case b % 2 == 0:
		x := pow(a, b/2) % MOD
		return (x * x) % MOD
	default:
		x := pow(a, b/2) % MOD
		return (x * x * a) % MOD
	}
}

func div(a, b int) int {
	return mul(a, pow(b, MOD-2))
}

func main() {
	sc.Split(bufio.ScanWords)

	n, k := nextInt(), nextInt()
	red := n-k

	for i := 1; i <= k; i++ {
		fmt.Println((comb(red+1, i) * comb(k-1, i-1)) % MOD)
	}
}