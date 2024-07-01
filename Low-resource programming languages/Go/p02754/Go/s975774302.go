package main

import (
	"fmt"
	"math"
)

func main() {

	var n, a, b int
	fmt.Scan(&n, &a, &b)

	if a == 0 {
		fmt.Println(0)
	} else if n <= a {
		fmt.Println(n)
	} else if n <= a+b {
		fmt.Println(a)
	} else if n > a+b {
		result := n - int(math.Floor(float64(n/(a+b))))*b
		fmt.Println(result)
	}

}
