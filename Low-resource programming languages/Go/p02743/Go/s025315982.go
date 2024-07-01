package main

import "fmt"
import "math"

func main() {
	var a, b, c float64
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)

	res := math.Sqrt(a) + math.Sqrt(b) < math.Sqrt(c)

	if res {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
