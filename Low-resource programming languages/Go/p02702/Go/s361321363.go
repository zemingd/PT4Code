package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)
var s string
var N int
var ds []int
var sums []int

func main() {
	if sc.Scan() {
		s = sc.Text()
	}
	N = len(s)
	ds = make([]int, len(s))
	sums = make([]int, N)

	for i, c := range s {
		ds[i] = int(c - '0')
	}
	accum()
	ans := 0
	for i := range ds {
		for j := i + 3; j < N; j++ {
			if num(i, j)%2019 == 0 {
				ans++
			}
		}
	}
	fmt.Println(ans)
}

func accum() {
	for i, d := range ds {
		if i == 0 {
			sums[i] = d
		} else {
			sums[i] = sums[i-1]*10 + d
		}
	}
}

func num(i, j int) int {
	if i == 0 {
		return sums[j]
	}
	return sums[j] - sums[i-1]*pow(10, j-i+1)
}

func pow(b, p int) int {
	r := 1
	for ; p > 0; p >>= 1 {
		if p&1 == 1 {
			r *= b
		}
		b *= b

	}
	return r
}
