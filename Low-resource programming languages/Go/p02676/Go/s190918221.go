package main

import (
	"fmt"
)

func main() {

	var K int
	fmt.Scanf("%d", &K)

	var S string
	fmt.Scanf("%s", &S)

	if (len(S) - 1) <= K {
		fmt.Println(S)
	} else {
		fmt.Println(S[0:K] + "...")
	}
}
