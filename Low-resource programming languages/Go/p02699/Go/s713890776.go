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
		fmt.Println("safe")
	} else {
		fmt.Println("unsafe")
	}
}