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
	sc.Buffer(nil, 1000000000000)

	n := nextInt()
	as := make([]int, n)

	mod := int(1e9 + 7)

	for i := int(0); i < n; i++ {
		as[i] = nextInt() % mod
	}

	asum := make([]int, n)
	asum[n-1] = as[n-1]
	for i := int(1); i < n; i++ {
		asum[n-1-i] = (asum[n-i] + as[n-1-i]) % mod
	}

	ans := int(0)
	for i := int(0); i < n-1; i++ {
		ans += as[i] * (asum[i+1]) % mod
		ans = ans % mod
	}
	fmt.Println(ans)
}
