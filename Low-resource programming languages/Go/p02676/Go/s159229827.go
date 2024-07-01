package main

import (
	"fmt"
)

func main() {

	var K int
	fmt.Scanf("%d", &K)

	var S string
	fmt.Scanf("%s", &S)

	fmt.Println(len(S))
	if len(S) <= K {

		fmt.Println(S)
	} else {
		fmt.Println(S[0:K] + "...")
	}
}
