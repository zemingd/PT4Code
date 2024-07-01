package main

import "fmt"

func main() {
	var N, w, p, c int
	fmt.Scan(&N)
	m := map[string]int{}
	for i := 0; i < N; i++ {
		fmt.Scan(&w)
		switch {
		case w < 400:
			m["gray"]++
		case w < 800:
			m["brown"]++
		case w < 1200:
			m["green"]++
		case w < 1600:
			m["water"]++
		case w < 2000:
			m["blue"]++
		case w < 2400:
			m["yellow"]++
		case w < 2800:
			m["orange"]++
		case w < 3200:
			m["red"]++
		default:
			p++
		}
	}
	for range m {
		c++
	}
	fmt.Printf("%d %d\n", c, c+p)
}