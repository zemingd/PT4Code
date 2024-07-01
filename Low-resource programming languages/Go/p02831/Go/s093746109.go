package main

import (
	"fmt"
)

func main() {

	var A,B int

	fmt.Scan(&A,&B)

	result :=0

	for i:=1;i<=B;i++{

		if (A*i)%B==0{

			result = A*i
			break
		} 
	}

	fmt.Println(result)

}