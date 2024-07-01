package main

import "fmt"

func main() {
	var a, b, c, d, e, f int
	fmt.Scan(&a, &b, &c, &d, &e, &f)
	fmt.Println(solve(a, b, c, d, e, f))
}

func solve(a, b, c, d, e, f int) (int, int) {
	x, y := 0, 0

	for i := range waters(a, b, f) {
		for j := range sugers(c, d, f) {
			if i*100+j > f {
				continue
			}
			if j > i*e {
				continue
			}

			k := i*100 + j
			if j*x >= y*k {
				x, y = k, j
			}
		}
	}
	return x, y
}

func waters(a, b, f int) map[int]interface{} {
	m := make(map[int]interface{})
	for i := 0; a*i*100 <= f; i++ {
		for j := 0; (a*i+b*j)*100 <= f; j++ {
			m[a*i+b*j] = nil
		}
	}
	return m
}

func sugers(c, d, f int) map[int]interface{} {
	m := make(map[int]interface{})
	for i := 0; c*i <= f; i++ {
		for j := 0; c*i+d*j <= f; j++ {
			m[c*i+d*j] = nil
		}
	}
	return m
}
