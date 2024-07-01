package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var a, b, c float64
	fmt.Scan(&a, &b, &c)
	s := []float64{a, b, c}
	sort.Float64s(s)
	fmt.Println(math.Abs(s[0]-s[1]) + math.Abs(s[1]-s[2]))
}
