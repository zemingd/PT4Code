package main

import "fmt"

func main() {
	var a, b, c, d, e, f int
	fmt.Scan(&a, &b, &c, &d, &e, &f)
	a *= 100
	b *= 100

	var mizu, sato int
	ansSato := 0
	ansMizu := 100
	for na := 0; a*na <= f; na++ {
		for nb := 0; a*na+b*nb <= f; nb++ {
			mizu = a*na + b*nb
			if mizu == 0 {
				continue
			}
			for nc := 0; mizu+c*nc <= f; nc++ {
				for nd := 0; mizu+c*nc+d*nd <= f; nd++ {
					sato = c*nc + d*nd
					if sato > mizu/100*e {
						continue
					}
					if mizu+sato > f {
						continue
					}
					if sato*(ansSato+ansMizu) > ansSato*(sato+mizu) {
						ansSato = sato
						ansMizu = mizu
					}
				}
			}
		}
	}
	fmt.Println(ansSato+ansMizu, ansSato)
}
