package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func init() {
	sc.Split(bufio.ScanWords)
}

func upperBound(a []int, x int) int {
	return sort.Search(len(a), func(i int) bool { return a[i] > x })
}

func lowerBound(a []int, x int) int {
	return sort.Search(len(a), func(i int) bool { return a[i] >= x })
}

func main() {
	n := scanInt()
	A := make([]int, n)
	for i := range A {
		A[i] = scanInt()
	}

	B := make([]int, n)
	for i := range B {
		B[i] = scanInt()
	}

	C := make([]int, n)
	for i := range C {
		C[i] = scanInt()
	}

	sort.Ints(A)
	sort.Ints(C)

	total := 0
	for _, b := range B {
		cntA := lowerBound(A, b)
		cntC := n - upperBound(C, b)
		total += cntA * cntC
	}
	fmt.Println(total)
}
