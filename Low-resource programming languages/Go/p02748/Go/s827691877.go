package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	t, _ := strconv.Atoi(sc.Text())
	return t
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	A := nextInt(sc)
	B := nextInt(sc)
	M := nextInt(sc)
	a := make([]int, A)
	b := make([]int, B)
	x := make([]int, M)
	y := make([]int, M)
	c := make([]int, M)
	mina := int(1e10)
	for i := range a {
		a[i] = nextInt(sc)
		mina = min(mina, a[i])
	}
	minb := int(1e10)
	for i := range b {
		b[i] = nextInt(sc)
		minb = min(minb, b[i])
	}
	minc0 := mina + minb
	minc1 := int(1e12)
	for i := 0; i < M; i++ {
		x[i] = nextInt(sc)
		x[i]--
		y[i] = nextInt(sc)
		y[i]--
		c[i] = nextInt(sc)
		if x[i] < A && y[i] < B {
			minc1 = min(minc1, (a[x[i]] + b[y[i]] - c[i]))
		}
	}
	fmt.Println(min(minc0, minc1))
}
