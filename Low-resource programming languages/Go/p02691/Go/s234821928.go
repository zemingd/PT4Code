package main

import "fmt"

func main() {
	var N, count int
	fmt.Scan(&N)
	A := make([]int, N)
	for i:=0; i<N; i++ {
		fmt.Scan(&A[i])
	}

	for i:=0; i<N-1; i++ {
		for j:=i+1; j<N; j++ {
          if j-i == A[i]+A[j] {
				count++
			}
		}
	}
	fmt.Println(count)
}