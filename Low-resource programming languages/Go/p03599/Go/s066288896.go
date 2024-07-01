package main

import "fmt"

func density(a, b int) float64 {
	if a == 0 && b == 0 {
		return 0.0
	}
	return float64(b) / (float64(a) + float64(b))
}

func main() {
	var a, b, c, d, e, f int
	fmt.Scan(&a, &b, &c, &d, &e, &f)

	waters := make([]int, 0)
	m := make(map[int]bool)
	for i := 0; i*100 <= f; i += a {
		for j := 0; (i+j)*100 <= f; j += b {
			w := (i + j) * 100
			if !m[w] {
				m[w] = true
				waters = append(waters, w)
			}
		}
	}

	max := -1.0
	sugar := 0
	weight := 0
	for _, w := range waters {
		for i := 0; i <= w/100*e; i += c {
			for j := 0; i+j <= w/100*e; j += d {
				s := i + j
				if den := density(w, s); w+s <= f && den > max {
					max = den
					weight = w + s
					sugar = s
				}
			}
		}
	}
	fmt.Println(weight, sugar)
}
