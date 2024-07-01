package main

import (
	"fmt"
)

func main() {
	var K int
	var S string
	fmt.Scan(&K)
	fmt.Scan(&S)
	if len(S) <= K {
		fmt.Println(S)
	} else {
		fmt.Println(S[:K] + "...")
	}
}
