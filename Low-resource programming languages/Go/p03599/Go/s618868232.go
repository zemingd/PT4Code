package main

import "fmt"

func density(a, b int) float64 {
	if a == 0 && b == 0 {
		return 0.0
	}
	return 100 * float64(b) / (float64(a) + float64(b))
}

func main() {
	var a, b, c, d, e, f int
	fmt.Scan(&a, &b, &c, &d, &e, &f)

	waters := make([]int, 0)
	m := make(map[int]bool)
	for i := 0; i*100 <= f; i += a {
		for j := 0; (i+j)*100 <= f; j += b {
			if !m[i+j] {
				m[i+j] = true
				waters = append(waters, i+j)
			}
		}
	}

	max := 0.0
	sugar := 0
	weight := 0
	for _, w := range waters {
		for i := 0; i <= w*e; i += c {
			for j := 0; i+j <= w*e; j += d {
				if den := density(100*w, i+j); w*100+i+j <= f && den > max {
					max = den
					weight = w*100 + i + j
					sugar = i + j
				}
			}
		}
	}
	fmt.Println(weight, sugar)
}
