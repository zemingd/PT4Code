package main

import (
	"fmt"
)

func main() {

	var S string
	fmt.Scanf("%s", &S)
	var T string
	fmt.Scanf("%s", &T)

	min := len(S)
	for i := 0; i <= (len(S) - len(T)); i++ {
		exT := S[i : i+len(T)]
		count := 0

		for j := 0; j < len(T); j++ {
			if T[j] != exT[j] {
				count += 1
			}
		}

		if count < min {
			min = count
		}
	}

	fmt.Println(min)
}
