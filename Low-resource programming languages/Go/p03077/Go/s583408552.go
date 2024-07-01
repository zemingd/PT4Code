package main

import (
	"fmt"
	"math"
)

func main() {

	var (
		n int
		a int
		b int
		c int
		d int
		e int
	)

	fmt.Scan(&n, &a, &b, &c, &d, &e)

	min := math.Min(float64(a), math.Min(float64(b), math.Min(float64(c), math.Min(float64(d), float64(e)))))

	time := n / int(min)

	if n%int(min) == 0 {
		time = time + 4
	} else {
		time = time + 1 + 4
	}

	fmt.Print(time)

}
