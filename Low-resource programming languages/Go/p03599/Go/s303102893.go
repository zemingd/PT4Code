package main

import "fmt"

func main() {
	var a, b, c, d, e, f int
	fmt.Scan(&a, &b, &c, &d, &e, &f)
	a *= 100
	b *= 100

	ansSugar := 0
	ansSolution := a
	for ai := 0; a*ai <= f; ai++ {
		for bi := 0; a*ai+b*bi <= f; bi++ {
			water := a*ai + b*bi
			for ci := 0; water+c*ci <= f; ci++ {
				for di := 0; water+c*ci+d*di <= f; di++ {
					sugar := c*ci + d*di
					solution := water + sugar
					if sugar*(100+e) > e*solution {
						continue
					}
					if sugar*ansSolution > ansSugar*solution {
						ansSugar = sugar
						ansSolution = solution
					}
				}
			}
		}
	}
	fmt.Println(ansSolution, ansSugar)
}
