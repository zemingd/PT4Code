package main

import "fmt"
//import "math"

func main(){
	var N int
	var A [200000]float64
	var maxtmp float64

	fmt.Scan(&N)
	for i:= 0 ; i < N ; i++ {
		fmt.Scan(&A[i])
	}
	
	
	for i := 0 ; i < N ; i++ {
		maxtmp = 0
		for j := 0 ; j < i - 1 ; j++ {
			if maxtmp < A[j] {
				maxtmp = A[j]
			}
		}
		for j := i + 1 ; j < N ; j++ {
			if maxtmp < A[j] {
				maxtmp = A[j]
			}
		}
		if i == N - 1{
			if maxtmp < A[i-1]{
				maxtmp = A[i]
			}
		} 
		fmt.Println(maxtmp)
	}
	
}