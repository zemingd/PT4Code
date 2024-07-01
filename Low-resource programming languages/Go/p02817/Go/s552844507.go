package main

import (
	"fmt"
)

func main(){
	var A, B, K int;

	fmt.Scan(&A, &B, &K)
	
	for i:=0 ; i < K ; i++{
		if 1 <= A{
			A--
		}else if 1 <= B{
			B--
		}else {}
	}
	fmt.Println(A, B)
}
