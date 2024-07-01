package main

import (
	"fmt"
)

func main() {
	var (
		sheep, wolves int
	)

	fmt.Scan(&sheep, &wolves)

	if sheep <= wolves {
		fmt.Println("unsafe")
	} else {
		fmt.Println("safe")
	}
}