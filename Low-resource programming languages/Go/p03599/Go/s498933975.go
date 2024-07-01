package main

import "fmt"

func main() {
	var a, b, c, d, e, f int
	fmt.Scan(&a, &b, &c, &d, &e, &f)
	fmt.Println(solve(a, b, c, d, e, f))
}

func solve(a, b, c, d, e, f int) (int, int) {
	x, y := 1, 0

	for wa := 0; wa <= f; wa += a * 100 {
		for wb := 0; wa+wb <= f; wb += b * 100 {
			w := wa + wb
			for sc := 0; w+sc <= f && sc <= w/100*e; sc += c {
				for sd := 0; w+sc+sd <= f && sc+sd <= w/100*e; sd += d {
					s := sc + sd
					t := w + s
					if s*x > y*t {
						x, y = t, s
					}
				}
			}
		}
	}

	return x, y
}
