package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var a1, a2, a3 float64
	fmt.Scan(&a1, &a2, &a3)
	
	s := make([]float64, 3)
	s[0] = math.Abs(a1 - a2)
	s[1] = math.Abs(a1 - a3)
	s[2] = math.Abs(a2 - a3)

	sort.Float64s(s)
	fmt.Println(s[0] + s[1])
}