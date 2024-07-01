package main

import "fmt"

func main() {
	var N, count int
	fmt.Scan(&N)
	A := make([]int, N)
	for i:=0; i<N; i++ {
		fmt.Scan(&A[i])
	}

	for i:=1; i<N; i++ {
		for j:=0; j<N-i; j++ {
          if i == A[j]+A[j+i] {
				count++
			}
		}
	}
	fmt.Println(count)
}