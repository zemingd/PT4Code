package main

import (
	"fmt"
	"math"
)

func move(l int, v int) int {
	ll := int(math.Abs(float64(l)))
	vv := int(math.Abs(float64(v)))
	return int(math.Abs(float64(ll) - float64(vv)))
}

func main() {
	var a, v, b, w, t int
	fmt.Scan(&a, &v, &b, &w, &t)

	dl := int(math.Abs(float64(a) - float64(b)))
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

	for i := 0; i < t; i++ {
		dl = move(dl, dv)
		if dl == 0 {
			fmt.Println("YES")
			return
		}
	}

	fmt.Println("NO")
}
