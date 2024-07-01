package main

import (
	"fmt"
)

func main(){
	var A, B, X int
	fmt.Scan(&A,&B,&X)
	if A + B < X || A > X {
		fmt.Println("NO")
	} else {
		fmt.Println("YES")
	}
}