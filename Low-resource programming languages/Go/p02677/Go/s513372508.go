package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, h, m int
	fmt.Scan(&a, &b, &h, &m)

	sa := float64(h*60+m) / 360.0 * math.Pi
	sb := float64(m) / 30.0 * math.Pi
	var diff float64
	if sa >= sb {
		diff = sa - sb
	} else {
		diff = sb - sa
	}
	if diff > math.Pi {
		diff -= math.Pi
	}
	ans := float64(a*a+b*b) - 2.0*float64(a*b)*math.Cos(diff)
	ans = math.Sqrt(ans)
	fmt.Printf("%.12f\n", ans)
}
