package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)

	t := make([]int, n)
	x := make([]int, n)
	y := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&t[i], &x[i], &y[i])
	}

	t = append([]int{0}, t...)
	x = append([]int{0}, x...)
	y = append([]int{0}, y...)
	// fmt.Printf("%v %v %v", t, x, y)

	res := true
	for i := 0; i < n; i++ {
		// t[i] から t[i + 1] への移動が可能かを調べる
		time := t[i+1] - t[i]
		dist := int(math.Abs(float64(x[i+1]-x[i]))) + int(math.Abs(float64(y[i+1]-y[i])))
		// fmt.Println(time, dist)

		ok := false
		if time >= dist && (time-dist)%2 == 0 {
			ok = true
		}

		if !ok {
			res = false
			break
		}
	}

	if res {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
