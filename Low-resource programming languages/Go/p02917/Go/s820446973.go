package main

import "fmt"
//import "math"

func main(){
	var N , max int
	var B[100000] int
	var A[100000] int

	fmt.Scan(&N)

	for i := 0 ; i < N - 1 ; i++ {
		fmt.Scan(&B[i])
	}
	A[0] = B[0]
	for i := 1 ; i < N ; i++ {
		A[i] = B[i-1] 
	}
	for i := 0 ; i < N ; i++ {
		max += A[i]
	//	fmt.Printf("%d ", A[i])
	}
	//fmt.Println()
	fmt.Println(max)
	
}