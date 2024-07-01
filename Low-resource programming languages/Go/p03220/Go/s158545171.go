package main

import "fmt"

func abs(i float64) float64 {
	if i < 0 {
		return -i
	}
	return i
}

func main() {
	var (
		n    int
		t, a float64
	)
	fmt.Scan(&n, &t, &a)

	var (
		h, rd float64
		ri    int
	)
	for i := 0; i < n; i++ {
		fmt.Scan(&h)
		ht := t - h*0.006
		d := abs(a - ht)

		if i == 0 {
			rd = d
			continue
		}

		if d < rd {
			ri = i
			rd = d
		}
	}

	fmt.Println(ri + 1)
}
