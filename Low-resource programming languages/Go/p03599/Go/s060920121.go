package main

import (
	"fmt"
)

func main() {
	var a, b, c, d, e, f float64
	fmt.Scan(&a, &b, &c, &d, &e, &f)

	a *= 100
	b *= 100

	maxConcentration := e / (e + 100)

	water := 0.0
	sugar := 0.0
	concentration := 0.0

	for ai := 0.0; ai*a <= f; ai++ {
		for bi := 0.0; bi*b+ai*a <= f; bi++ {
			w := bi*b + ai*a
			for ci := 0.0; ci*c+w <= f; ci++ {
				for di := 0.0; ci*c+di*d+w <= f; di++ {
					s := di*d + ci*c
					c := s / (s + w)
					if c > concentration && c <= maxConcentration {
						sugar = s
						water = w
						concentration = c
					}
				}
			}
		}
	}

	fmt.Println(water+sugar, sugar)
}
