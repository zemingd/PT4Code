package main

import (
	"fmt"
	"log"
)

func main() {
	var n, x, t int
	if _, err := fmt.Scan(&n, &x, &t); err != nil {
		log.Fatal(err)
	}

	result := ((n + x - 1) / x) * t
	fmt.Println(result)
}
