package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c float64
	fmt.Scan(&a, &b, &c)
	ans := math.Max(c-(a-b), 0.0)
	fmt.Println(ans)
}
