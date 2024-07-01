package main

import (
	"fmt"
)

func main(){
	var N int
	fmt.Scan(&N)

	var V[20] int
	var C[20] int
	
	for i:=0; i < N; i++ {
		fmt.Scan(&V[i])
	}
	for i:=0; i < N; i++ {
		fmt.Scan(&C[i])
	}
	res := 0
	for i:=0; i < N; i++ {
		if V[i]-C[i] <= 0 {
			continue
		}
		res = res + V[i]-C[i]
	}
	fmt.Println(res)
}