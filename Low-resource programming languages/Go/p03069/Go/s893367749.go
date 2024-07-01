package main

import (
	"fmt"
)

func main() {
	var N int
	var S string
	fmt.Scan(&N, &S)
	numOfWhite := 0
	numOfBlack := 0
	for i := 0; i < N; i++ {
		if string(S[i]) == "." {
			numOfWhite++
		} else {
			numOfBlack++
		}
	}

	if numOfWhite >= numOfBlack {
		fmt.Println(numOfBlack)
	} else {
		fmt.Println(numOfWhite)
	}
}
