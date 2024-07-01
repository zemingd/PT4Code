package main

import "fmt"

var (
	a, b, c, d, e, f int
	g, h, t, s1, s2  int
)

func main() {
	fmt.Scan(&a, &b, &c, &d, &e, &f)
	a *= 100
	b *= 100

	for i := 0; i <= 30 && a*i <= f; i++ {
		for j := 0; j <= 30 && i*a+j*b <= f; j++ {
			if i == 0 && j == 0 {
				continue
			}
			g = i*a + j*b
			h = min(g*e/100, f-g)
			t := 0
			for k := 0; k <= 100 && c*k <= h; k++ {
				for l := 0; l <= 100 && c*k+d*l <= h; l++ {
					t = max(t, c*k+d*l)
					if s1 == 0 || t*(s1+s2) > s2*(g+t) {
						s1 = g
						s2 = t
					}
				}
			}
		}
	}
	fmt.Println(s1+s2, s2)
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x < y {
		return y
	}
	return x
}
