package main

import (
	"fmt"
	"math"
)

func main() {
	var n, a, b int
	fmt.Scanf("%d %d %d", &n, &a, &b)
	sho := n / (a + b)
	amari := n % (a + b)
	ao := sho * a + int(math.Min(float64(amari), float64(a)))
	fmt.Println(ao)
}
