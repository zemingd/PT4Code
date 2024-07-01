package main

import "fmt"

func main() {
	var A, B, C, D, E, F int
	fmt.Scan(&A, &B, &C, &D, &E, &F)

	ans1, ans2 := 100*A, 0
	tmp := 0.0
	for a := 0; a*A*100 <= F; a++ {
		for b := 0; b*B*100 <= F; b++ {
			for c := 0; c*C <= F; c++ {
				for d := 0; d*D <= F; d++ {
					w := a*A*100 + b*B*100
					s := c*C + d*D
					if w+s > F {
						continue
					}

					if float64(s) <= float64(w)/100.0*float64(E) {
						p := 100 * float64(s) / (float64(w) + float64(s))
						if tmp < p {
							tmp = p
							ans1 = s + w
							ans2 = s
						}
					}
				}
			}
		}
	}

	fmt.Println(ans1, ans2)
}
