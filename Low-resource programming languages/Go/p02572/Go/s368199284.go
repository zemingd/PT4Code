package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const mod int = 1e9 + 7

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	as := make([]int, n)
	sum := 0
	for i := 0; i < n; i++ {
		as[i] = nextInt()
		sum = add(sum, as[i])
	}

	ans := mul(sum, sum)
	for i := 0; i < n; i++ {
		ans = sub(ans, mul(as[i], as[i]))
	}
	ans = div(ans, 2)
	fmt.Println(ans)
}

func pow(n, k int) int {
	if k == 0 {
		return 1
	} else if k%2 == 1 {
		return pow(n, k-1) * n % mod
	} else {
		t := pow(n, k/2)
		return t * t % mod
	}
}

func add(a, b int) int {
	return (a + b) % mod
}

func sub(a, b int) int {
	return (a + mod - b) % mod
}

func mul(a, b int) int {
	return a % mod * b % mod % mod
}

func div(a, b int) int {
	return mul(a, pow(b, mod-2))
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
