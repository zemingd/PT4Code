package main

import (
	"fmt"
	"sort"
)

func main() {
	var x, y, a, b, c int
	fmt.Scan(&x, &y, &a, &b, &c)
	apples := []apple{}
	for a > 0 {
		a--
		var d int
		fmt.Scan(&d)
		apples = append(apples, apple{d, 1})
	}
	for b > 0 {
		b--
		var d int
		fmt.Scan(&d)
		apples = append(apples, apple{d, 2})
	}
	for c > 0 {
		c--
		var d int
		fmt.Scan(&d)
		apples = append(apples, apple{d, 0})
	}
	sort.Slice(apples, func(i, j int) bool {
		return apples[i].del > apples[j].del
	})
	eaten := 0
	total := 0
	for _, a := range apples {
		switch a.color {
		case 0:
			eaten++
			total += a.del
		case 1:
			if x > 0 {
				x--
				total += a.del
			}
		case 2:
			if y > 0 {
				y--
				total += a.del
			}
		}
		if eaten == x+y {
			break
		}
	}
	fmt.Printf("%d\n", total)
}

type apple struct {
	del   int
	color int
}
