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
	var A []int

	B := strings.Split(gets(), " ")

	// fmt.Println(A)
	// fmt.Println(B)

	for i := 0; i < n-2; i++ {
		if atoi(B[i+1]) < (atoi(B[i])) {
			A = append(A, atoi(B[i+1]))
		} else {
			A = append(A, atoi(B[i]))
		}
	}
	A = append(A, atoi(B[n-2]))

	// fmt.Println(A[:n])

	sum := 0

	for _, a := range A {
		sum += a
	}

	fmt.Println(sum)
}
