package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	A := []int{}
	fmt.Scan(&A)
	for n := 0; n < N; n++ {
		var tmp int
		fmt.Scanf("%d", &tmp)
		A = append(A, tmp)
	}
	minimum := A[0]
	ans := 1
	for n := 1; n < N; n++ {
		if minimum > A[n] {
			ans++
			minimum = A[n]
		}
	}
	fmt.Println(ans)
}
