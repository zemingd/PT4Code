package main

import (
	"fmt"
)

func main() {
	var a, b, c, d, e, f float64
	fmt.Scan(&a, &b, &c, &d, &e, &f)
	a *= 100
	b *= 100

	water := 0.0
	sugar := 0.0
	con := 0.0

	maxCon := e / (e + 100)

	for ai := 0.0; ai*a <= f; ai++ {
		for bi := 0.0; bi*b+ai*a <= f; bi++ {
			w := bi*b + ai*a
			maxSugar := ((bi*b + ai*a) / 100) * e
			for ci := 0.0; ci*c <= maxSugar && ci*c+w <= f; ci++ {
				for di := 0.0; di*d+ci*c <= maxSugar && ci*c+di*d+w <= f; di++ {
					s := di*d + ci*c
					concentration := s / (s + w)
					if concentration > con && concentration <= maxCon {
						sugar = s
						water = w
						con = concentration
					}
				}
			}
		}
	}

	fmt.Println(water+sugar, sugar)
}
