package main

import (
	"fmt"
	"math"
)

func main()  {
	var p, q, r int
	fmt.Scan(&p, &q, &r)

	fmt.Println(p+q+r-maxInt(p,maxInt(q,r)))
}

func maxInt(x int, y int) int {
	return int(math.Max(float64(x), float64(y)))
}