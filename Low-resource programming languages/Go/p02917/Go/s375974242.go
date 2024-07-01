package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func calcSeq(n int, ints []int) []int {
	aInts := make([]int, n+1)
	for i := 1; i < n+1; i++ {
		aInts[i] = min(ints[i], ints[i-1])
	}
	return aInts[1:]
}

func sum(ints []int) (sum int) {
	for _, i := range ints {
		sum += i
	}
	return
}

func min(l, r int) int {
	if l > r {
		return r
	}
	return l
}

func main() {
	/*
		// A: X1, X2, X3
		// A: 10,  2, 2
		// B: 10,  2

		// A: X1, X2, X3, X4
		// A: 10, 10,  8, 8
		// B: 10, 15,  8

		// A:     , X1, X2, X3,  X4
		// A:     , 10, 10, 15,  20
		// B: (10), 10, 15, 20, (20)
		// () is dummy
		// ai = min(bi, bi-1)
	*/
	n := nextInt()
	ints := make([]int, n+1)
	// index: 0, [1, 2, ... , n-1], n
	for i := 1; i < n; i++ {
		ints[i] = nextInt()
	}
	// dummy
	ints[0] = ints[1]
	ints[n] = ints[n-1]
	fmt.Println(sum(calcSeq(n, ints)))
}
