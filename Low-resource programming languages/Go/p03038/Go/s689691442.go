package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	N, M := nextInt(), nextInt()
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = nextInt()
	}

	B := make([]int, M)
	C := make([]int, M)
	for i := 0; i < M; i++ {
		B[i], C[i] = nextInt(), nextInt()
	}

	bc := make([]int, 0, 100000)
	for n, bb := range B {
		for i := 0; i < bb; i++ {
			bc = append(bc, C[n])
		}
	}

	sort.Sort(sort.Reverse(sort.IntSlice(bc)))
	sort.Ints(A)
	// fmt.Println(bc)

	ans := 0
	for i := 0; i < N; i++ {
		if len(bc) <= i {
			ans += A[i]
		} else {
			ans += max(A[i], bc[i])

		}

	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
