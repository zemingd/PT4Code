package main

import (
	"fmt"
	"log"
	"math"
)

func main() {
	var n, x, t int
	if _, err := fmt.Scanf("%d %d %d", &n, &x, &t); err != nil {
		log.Fatal(err)
	}

	result := int(math.Ceil(float64(n / x))) * t
	fmt.Println(result)
}
