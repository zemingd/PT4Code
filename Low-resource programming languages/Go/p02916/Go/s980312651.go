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
	A := make([]int, 20)
	B := make([]int, 20)
	C := make([]int, 20)

	for idx, v := range strings.Split(gets(), " ") {
		A[idx] = atoi(v)
	}

	for idx, v := range strings.Split(gets(), " ") {
		B[idx] = atoi(v)
	}

	for idx, v := range strings.Split(gets(), " ") {
		C[idx] = atoi(v)
	}

	// fmt.Println(A)
	// fmt.Println(B)
	// fmt.Println(C)

	var before int
	sum := 0
	for idx, a := range A[:n] {
		// fmt.Println("idx", idx)
		sum += B[a-1]
		if idx != 0 {
			if before == (a - 1) {
				sum += C[before-1]
			}
		}
		before = a
		// fmt.Println("sum", sum)
	}

	fmt.Println(sum)
}
