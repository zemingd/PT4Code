package main

import "fmt"

func main() {

	var N int
	fmt.Scanf("%d", &N)
	A := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &A[i])
		if A[i]%2 == 0 {
			if A[i]%3 != 0 && A[i]%5 != 0 {
				fmt.Println("DENIED")
				return
			}
		}
	}
	fmt.Println("APPROVED")
}
