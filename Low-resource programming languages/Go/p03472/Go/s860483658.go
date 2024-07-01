package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, H int
	if _, err := fmt.Scan(&N, &H); err != nil {
		return
	}
	A := make([]int, N)
	B := make([]int, N)

	count := 0

	for i := 0; i < N; i++ {
		if _, err := fmt.Scan(&A[i], &B[i]); err != nil {
			return
		}
	}

	sort.Ints(A)
	sort.Ints(B)
	maximumVal := A[N-1]

	for j := N - 1; j >= 0; j-- {
		if maximumVal > B[j] {
			break
		}
		H -= B[j]
		count++
		if H <= 0 {
			fmt.Println(count)
			return
		}
	}

	if H%maximumVal == 0 {
		fmt.Println(count + H/maximumVal)
	} else {
		fmt.Println(count + H/maximumVal + 1)
	}
}
