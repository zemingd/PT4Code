package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func solve(N int, B []int) int {
	A := make([]int, N)

	for i := range B {
		if i == 0 {
			A[i], A[i+1] = B[i], B[i]
			continue
		}
		if A[i] > B[i] {
			A[i], A[i+1] = B[i], B[i]
		} else {
			A[i+1] = B[i]
		}
	}

	sum := 0
	for _, v := range A {
		sum += v
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
	a := make([]int, n-1)
	for i := 0; i < n-1; i++ {
		a[i] = nextInt(sc)
	}

	fmt.Println(solve(n, a))
}
