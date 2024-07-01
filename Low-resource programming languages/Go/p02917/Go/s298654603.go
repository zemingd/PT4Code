package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func gets() string {
	sc.Scan()
	return sc.Text()
}

func atoi(s string) int {
	i, err := strconv.Atoi(s)
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	var n int
	fmt.Scan(&n)
	A := make([]int, 100)
	B := make([]int, 99)

	for i := 0; i < n; i++ {
		A[i] = 10000000000
	}

	for idx, v := range strings.Split(gets(), " ") {
		B[idx] = atoi(v)
	}

	// fmt.Println(A)
	// fmt.Println(B)

	for idx, b := range B[:(n - 1)] {
		for i := 0; i <= (idx + 1); i++ {
			if A[i] >= b {
				A[i] = b
				// fmt.Println(":", b)
			}
		}
	}

	// fmt.Println(A[:n])

	sum := 0

	for _, a := range A[:n] {
		sum += a
	}

	fmt.Println(sum)
}
