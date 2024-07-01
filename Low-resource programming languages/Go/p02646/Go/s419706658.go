package main

import (
	"fmt"
	"math"
)

func main() {
	var a, v, b, w, t int
	fmt.Scan(&a, &v, &b, &w, &t)

	dl := int(math.Abs(float64(a - b)))
	dv := int(math.Abs(float64(v - w)))

	if dv == 0 {
		fmt.Println("NO")
		return
	}

	if a > b {
		if v > w {
			fmt.Println("NO")
			return
		}
	} else {
		if w > v {
			fmt.Println("NO")
			return
		}
	}

	if dl/dv <= t {
		fmt.Println("YES")
	}

	fmt.Println("NO")
}