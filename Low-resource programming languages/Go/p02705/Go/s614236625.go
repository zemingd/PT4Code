package main

import (
	"fmt"
	"math"
)

func main() {
	var r int
	_, _ = fmt.Scan(&r)
	
	fmt.Println(answer163A(r))
}

func answer163A(r int) float64 {
	return 2 * math.Pi * float64(r)
}
