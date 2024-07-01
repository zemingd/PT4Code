package main

import "fmt"

func main() {
	var N, a, top int
	fmt.Scan(&N)
	color := make([]bool, 8)
	for i := 0; i < N; i++ {
		fmt.Scan(&a)
		switch {
		case 1 <= a && a < 400:
			color[0] = true
		case 400 <= a && a < 800:
			color[1] = true
		case 800 <= a && a < 1200:
			color[2] = true
		case 1200 <= a && a < 1600:
			color[3] = true
		case 1600 <= a && a < 2000:
			color[4] = true
		case 2000 <= a && a < 2400:
			color[5] = true
		case 2400 <= a && a < 2800:
			color[6] = true
		case 2800 <= a && a < 3200:
			color[7] = true
		case 3200 <= a:
			top += 1
		}
	}
	count := 0
	for _, v := range color {
		if v {
			count += 1
		}
	}
	min := count
	max := count + top
	if max > 8 {
		max = 8
	}
	fmt.Println(min, max)
}
