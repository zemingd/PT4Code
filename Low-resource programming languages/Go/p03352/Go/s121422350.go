package main

import (
	"fmt"
	"math"
	"os"
)

func main() {
	var X float64
	var last float64
	if _, err := fmt.Scan(&X); err != nil {
		os.Exit(-1)
	}
	for i := 1; i <= int(math.Sqrt(X)); i++ {
		for j := 2; j <= 1000; j++ {
			tmp := math.Pow(float64(i), float64(j))
			if tmp > X {
				break
			}
			last = tmp
		}
	}
	fmt.Println(last)
}
