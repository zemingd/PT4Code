package main

import (
	"fmt"
	"math"
)

const inf = 0x3f3f3f3f

func main() {
	var n int
	fmt.Scanf("%d\n", &n)
	ans := inf
	for i := 1; i*i < n; i++ {
		if n%i != 0 {
			continue
		}
		j := n / i
		m1, m2 := int(math.Log10(float64(i))), int(math.Log10(float64(j)))
		if m2 > m1 {
			m1 = m2
		}
		if m1 < ans {
			ans = m1
		}
	}
	fmt.Printf("%d", ans)
}
