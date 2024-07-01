package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func min(a ...int) int {
	m := a[0]
	for i, v := range a {
		if i == 0 {
			continue
		}
		if m > v {
			m = v
		}
	}
	return m
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	// Code for B - Nice Shopping
	var A, B, M int
	fmt.Scanf("%d %d %d", &A, &B, &M)

	sc.Split(bufio.ScanWords)
	var mina int = 1000000
	a := make([]int, A)
	for i := 0; i < A; i++ {
		a[i] = nextInt()
		if mina > a[i] {
			mina = a[i]
		}
	}

	var minb int = 1000000
	b := make([]int, B)
	for i := 0; i < B; i++ {
		b[i] = nextInt()
		if minb > b[i] {
			minb = b[i]
		}
	}

	var x, y, c int
	var ans int = mina + minb
	for i := 0; i < M; i++ {
		x = nextInt()
		y = nextInt()
		c = nextInt()
		temp := a[x-1] + b[y-1] - c
		ans = min(ans, temp)
	}

	fmt.Println(ans)
}
