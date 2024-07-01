package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// AtCoder Functions
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
	N := nextInt()

	B := make([]int, N-1)
	for i := 0; i < N-1; i++ {
		B[i] = nextInt()
	}

	A := make([]int, N)
	A[0] = B[0]
	if N > 2 {
		if B[0] > B[1] {
			A[1] = B[1]
		} else {
			A[1] = B[0]
		}
		for i := 2; i < N-1; i++ {
			if B[i] >= B[i-1] {
				A[i] = B[i-1]
			} else {
				A[i] = B[i]
			}
		}
		A[N-1] = B[N-2]
	} else {
		A[1] = B[0]
	}

	ret := 0
	for i := 0; i < N; i++ {
		ret += A[i]
	}
	fmt.Println(ret)
}
