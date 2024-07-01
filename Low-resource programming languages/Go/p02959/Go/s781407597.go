package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	N, _ := strconv.Atoi(read())
	var A []int
	var B []int
	var sum int

	for i := 0; i < N+1; i++ {
		val, _ := strconv.Atoi(read())
		A = append(A, val)
	}
	for i := 0; i < N; i++ {
		val, _ := strconv.Atoi(read())
		B = append(B, val)
	}
	for i := 0; i < N; i++ {
		if A[i] <= B[i] {
			sum += A[i]
			B[i] -= A[i]
			if A[i+1] <= B[i] {
				sum += A[i+1]
				A[i+1] = 0
			} else if B[i] > 0 {
				sum += B[i]
				A[i+1] -= B[i]
			}
		} else if B[i] > 0 {
			sum += B[i]
		}
	}
	fmt.Printf("%d\n", sum)
}
