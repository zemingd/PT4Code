package main

import (
	"fmt"
	"math"
)

func main() {
	var a,b,n float64
	fmt.Scan(&n,&a,&b)
	ans := math.Min(n * a, b)
	fmt.Printf("%v", ans)
	
}