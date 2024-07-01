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
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	ans := 0
	for i := uint(0); i <= 60; i++ {
		k := 0
		for j := 0; j < n; j++ {
			if (a[j]>>i)&1 == 0 {
				k++
			}
		}

		x := (k * (n - k) % mod) * ((1 << i) % mod)
		ans = (ans + x) % mod
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
