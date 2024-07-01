package main

import (
	"fmt"
)

func main() {
	var S string
	var T string
	fmt.Scan(&S)
	fmt.Scan(&T)

	fmt.Println(len(T + S))
}
