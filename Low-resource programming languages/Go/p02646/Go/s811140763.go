package main

import (
	"fmt"
	"math"
)

func main() {
	var a, v, b, w, t int
	fmt.Scan(&a, &v, &b, &w, &t)

	// dl := int(math.Abs(float64(a) - float64(b)))
	dv := int(math.Abs(float64(v) - float64(w)))

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

	for a%dv == b%dv {
		fmt.Println("YES")
		return
	}

	fmt.Println("NO")
}
