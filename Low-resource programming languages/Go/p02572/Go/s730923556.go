package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextFloat64() float64 {
	sc.Scan()
	i, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	//sc.Buffer(nil, 100000000)

	n := nextInt()
	as := make([]int, n)
	asum := make([]int, n)

	mod := 1000000000 + 7

	total := 0
	for i := 0; i < n; i++ {
		as[i] = nextInt()
		total += as[i] % mod
		if i == 0 {
			asum[i] = as[i] % mod
		} else {
			asum[i] = (as[i] % mod) + asum[i-1]%mod
		}
	}

	ans := 0
	total = total % mod
	for i := 0; i < n; i++ {
		ans += (as[i] % mod) * ((total - asum[i]) % mod)
		ans = ans % mod
	}
	fmt.Println(ans)
}
