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
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()
	A, B, C := make([]int, N), make([]int, N), make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = scanInt()
	}
	for i := 0; i < N; i++ {
		B[i] = scanInt()
	}
	for i := 0; i < N; i++ {
		C[i] = scanInt()
	}
	sort.Ints(A)
	sort.Ints(B)
	sort.Ints(C)

	ans := 0
	for _, b := range B {
		aindex := sort.SearchInts(A, b)
		cindex := sort.SearchInts(C, b+1)
		ans += aindex * (N - cindex)
	}

	fmt.Println(ans)
}
