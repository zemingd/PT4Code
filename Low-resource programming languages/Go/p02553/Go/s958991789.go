package main

import (
	"fmt"
	"math"
)

func main() {
	var a,b,c,d float64
	fmt.Scanf("%d %d %d %d", &a, &b, &c, &d)
	fmt.Print(math.Max(math.Max(a*c, a*d), math.Max(b*c, b*d)))
}
