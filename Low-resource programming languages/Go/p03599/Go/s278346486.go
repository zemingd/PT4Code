package main

import "fmt"

func main() {
	var a, b, c, d, e, f int
	fmt.Scan(&a, &b, &c, &d, &e, &f)

	a *= 100
	b *= 100

	max := 0.0
	ansM := a
	ansS := 0
	for i := 0; a*i <= f; i++ {
		for j := 0; a*i+b*j <= f; j++ {
			w := a*i + b*j
			for k := 0; w+c*k <= f; k++ {
				for l := 0; w+c*k+d*l <= f; l++ {
					s := c*k + d*l
					if s > w*e/100 {
						continue
					}
					t := float64(s) / float64(w+s)
					if t > max {
						max = t
						ansM, ansS = w+s, s
					}
				}
			}
		}
	}

	fmt.Println(ansM, ansS)
}
