package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func solve(N int, A, B, C []int) int {
	sum := 0
	prev := -100
	for i := range A {
		j := A[i] - 1
		sum += B[j]
		if i > 0 {
			if j-prev == 1 {
				sum += C[prev]
			}
		}
		prev = j
	}
	return sum
}

func newSplitScanner(r io.Reader) *bufio.Scanner {
	sc := bufio.NewScanner(r)
	sc.Split(bufio.ScanWords)
	return sc
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	var sc = newSplitScanner(os.Stdin)
	n := nextInt(sc)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt(sc)
	}

	b := make([]int, n)
	for i := 0; i < n; i++ {
		b[i] = nextInt(sc)
	}

	c := make([]int, n-1)
	for i := 0; i < n-1; i++ {
		c[i] = nextInt(sc)
	}

	fmt.Println(solve(n, a, b, c))
}
