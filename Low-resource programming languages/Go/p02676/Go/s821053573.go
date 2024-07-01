package main

import (
	"fmt"
)

func main() {
	var K int
	var S string
	fmt.Scanf("%s", &K)
	fmt.Scanf("%s", &S)

	if len(S) >= K {
		fmt.Println(S)
		return
	}

	result := S[:K]
	result += "..."
	fmt.Println(result)
}
