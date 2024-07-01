package main

import (
	"fmt"
	"strconv"
)

func main() {
	var S string
	fmt.Scanf("%s", &S)

	a, _ := strconv.Atoi(S[5:7])

	if a <= 4 {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD")
	}
}
