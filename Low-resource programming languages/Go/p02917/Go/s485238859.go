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

	for i := 0; i < n; i++ {
		A[i] = 10000000000
	}

	B := strings.Split(gets(), " ")

	// fmt.Println(A)
	// fmt.Println(B)

	for idx, b := range B {
		workB := atoi(b)
		for i := 0; i <= (idx + 1); i++ {
			if A[i] >= workB {
				A[i] = workB
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
