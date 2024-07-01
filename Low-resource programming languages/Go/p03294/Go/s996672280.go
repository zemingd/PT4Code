package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	A := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&A[i])
	}

	var LCM int
	LCM = A[0]
	for i := 1; i < n; i++ {
		LCM = lcm(LCM, A[i])
	}

	answer := modSum(LCM-1, A)
	fmt.Println(answer)
}

func modSum(m int, A []int) int {
	answer := 0

	for i := 0; i < len(A); i++ {
		answer += (m % A[i])
	}

	return answer
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	} else {
		return gcd(b, a%b)
	}
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}
