package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
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

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	var n int
	fmt.Scan(&n)
	var A []int
	var B []int

	for i := 0; i < n-1; i++ {
		B = append(B, nextInt())
	}
	A = append(A, B[0])

	// fmt.Println(A)
	// fmt.Println(B)

	for i := 0; i < n-2; i++ {
		if B[i+1] < B[i] {
			A = append(A, B[i+1])
		} else {
			A = append(A, B[i])
		}
	}
	A = append(A, B[n-2])

	// fmt.Println(A[:n])

	sum := 0

	for _, a := range A {
		sum += a
	}

	fmt.Println(sum)
}
