package main

import (
	"fmt"
	"math"
)

func main() {
	var n, count int
	fmt.Scan(&n)
	if n == 1 {
		fmt.Println(0)
		return
	}
	if n == 2 {
		fmt.Println(1)
		return
	}
	if n == 3 {
		fmt.Println(1)
		return
	}

	rootn := int(math.Sqrt(float64(n)))
	i := 2
	for i <= rootn {
		if n%i == 0 {
			n /= i
			count++
		}
		i++
	}
	if count == 0 {
		fmt.Println(1)
	} else {
		fmt.Println(count)
	}
}
