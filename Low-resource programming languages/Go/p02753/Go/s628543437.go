package main

import (
	"fmt"
)

func main() {

	var S string
	fmt.Scan(&S)
	if (S[0] == S[1]) && (S[1] == S[2]) {
		fmt.Println("No")
	} else {
	fmt.Println("Yes")
	}

}