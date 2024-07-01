package main

import "fmt"

func main() {
	var a, b, c, d, e, f int
	fmt.Scan(&a, &b, &c, &d, &e, &f)

	mw := make(map[int]bool)
	ms := make(map[int]bool)

	a = a * 100
	b = b * 100

	for i := 0; i*a <= f; i++ {
		for j := 0; j*b <= f-i*a; j++ {
			mw[a*i+b*j] = true
		}
	}

	for i := 0; i*c <= f; i++ {
		for j := 0; j*d <= f-i*c; j++ {
			ms[c*i+d*j] = true
		}
	}

	var maxW, maxS int

	// water
	for i := 0; i <= f; i++ {
		// sugar
		for j := 0; j <= f-i && i*e >= j*100; j++ {
			if !(mw[i] && ms[j]) {
				continue
			}
			if dencity(i, j) > dencity(maxW, maxS) {
				maxW, maxS = i, j
			}
		}
	}

	fmt.Println(maxW+maxS, maxS)
}

func dencity(water, sugar int) float64 {
	if water+sugar == 0 {
		return 0
	}
	return float64(100*sugar) / float64(water+sugar)
}