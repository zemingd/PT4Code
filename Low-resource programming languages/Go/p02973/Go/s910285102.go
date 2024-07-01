package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

const inf = 1 << 60
const mod int = 1e9 + 7

func ri() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func bs(a []int, t int) int {
	l, r := -1, len(a)
	for r-l > 1 {
		m := l + (r-l)/2
		if a[m] < t {
			r = m
		} else {
			l = m
		}
	}
	return r
}

func main() {
	sc.Split(bufio.ScanWords)
	n := ri()
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = ri()
	}

	colors := make([]int, 100010)
	for i := 0; i < len(colors); i++ {
		colors[i] = -1
	}

	for i := 0; i < len(a); i++ {
		x := bs(colors, a[i])
		colors[x] = a[i]
	}

	ans := 0
	for _, v := range colors {
		if v == -1 {
			break
		}
		ans++
	}
	fmt.Println(ans)
}
