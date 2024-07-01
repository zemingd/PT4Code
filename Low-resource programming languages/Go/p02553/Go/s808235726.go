package main

import (
	"fmt"
	"math"
)


func main() {
	var a,b,c,d float64
	fmt.Scan(&a,&b,&c,&d)


	max := math.Max(a * c ,a * d)
	max = math.Max(max ,b * d)
	max = math.Max(max, b * c)
	fmt.Println(max)
	return
}

