package main

import (
	"fmt"
)

func main() {
	var A,B int
	fmt.Scan(&A,&B)
	
	judge := "No"
	for i := 1; i <= 3; i++ {
		if A * B * i % 2 != 0 {
			judge = "Yes"
		}
	} 
	fmt.Println(judge)
}