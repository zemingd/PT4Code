package main

import (
	"fmt"
)

func main() {

	var S string

	fmt.Scan(&S)

	for i:=1;i<4;i++{

		if S[i-1:i] == S[i:i+1] {

			fmt.Println("Bad")
			return
		}
	}

	fmt.Println("Good")
}