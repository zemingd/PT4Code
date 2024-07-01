package main

import (
"fmt"
"math"
)

func main() {
	var R int
	fmt.Scan(&R)
	ans := 2*float64(R) * math.Pi
	fmt.Println(ans)
}