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
	for i := 0; i < n; i++ {
		as[i] = nextInt()
	}

	ans := 0
	x := 0
	for i := 0; i < n; i++ {
		ans += (as[i] * x) % mod
		ans %= mod
		x += as[i]
	}
	fmt.Println(ans)
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
