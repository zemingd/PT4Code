package main

import "fmt"

func main(){
	var A, B, K int64

	fmt.Scan(&A, &B, &K)

	BA := B-A+1

	if BA / 2 <= K {
		for i := A ; i <= B ; i++ {
			fmt.Println(i)
		}
	} else{
		for i := A ; i < A + K ; i++ {	
			fmt.Println(i)
		}
		for i := B-K+1 ; i <= B ; i++ {
			fmt.Println(i)
		}
	}
}