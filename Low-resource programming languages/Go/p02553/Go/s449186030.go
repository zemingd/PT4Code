package main

import (
	"fmt"
	"math"
)


func main() {
	var a,b,c,d float64 
	fmt.Scan(&a,&b,&c,&d)


	max := math.Max(math.Max(a * c ,a * d) ,math.Max(b * c ,b * d))
	fmt.Println(max)
	return
}
