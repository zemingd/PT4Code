package main

import "fmt"

func main() {
	var a, b, c, d, e, f int
	fmt.Scan(&a, &b, &c, &d, &e, &f)
	a *= 100
	b *= 100

	waters := make([]int, 0, 100)
	for ai := 0; a*ai <= f; ai++ {
		for bi := 0; b*bi <= f; bi++ {
			water := a*ai + b*bi
			if water <= f {
				waters = append(waters, water)
			}
		}
	}

	sugars := make([]int, 0, 100)
	for ci := 0; c*ci <= f; ci++ {
		for di := 0; d*di <= f; di++ {
			sugar := c*ci + d*di
			if sugar <= f {
				sugars = append(sugars, sugar)
			}
		}
	}

	ansSugar := 0
	ansSolution := a
	for _, water := range waters {
		for _, sugar := range sugars {
			solution := water + sugar
			if solution == 0 || solution > f {
				continue
			}
			if sugar*(100+e) > e*solution {
				continue
			}
			if sugar*ansSolution > ansSugar*solution {
				ansSugar = sugar
				ansSolution = solution
			}
		}
	}
	fmt.Println(ansSolution, ansSugar)
}
