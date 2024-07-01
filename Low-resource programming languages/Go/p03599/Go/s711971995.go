package main

import "fmt"

func main() {
	var a, b, c, d, e, f int
	fmt.Scan(&a, &b, &c, &d, &e, &f)

	var ws, ss []int
	for i := 0; 100*i <= f; i++ {
		for j := 0; 100*j <= f; j++ {
			w := 100*a*i + 100*b*j
			ws = append(ws, w)
		}
	}
	for i := 0; i <= f; i++ {
		for j := 0; j <= f; j++ {
			s := c*i + d*j
			ss = append(ss, s)
		}
	}

	max := 0.0
	var ansM, ansS int
	for _, w := range ws {
		for _, s := range ss {
			if w+s > f || s > w*e/100 {
				continue
			}

			t := float64(s) / float64(w+s)
			if t > max {
				max = t
				ansM, ansS = w+s, s
			}

		}
	}
	fmt.Println(ansM, ansS)
}
