package main

import "fmt"

func main() {
	var n, tMax int
	fmt.Scan(&n, &tMax)

	var c, t int
	minC := 1001
	for i := 0; i < n; i++ {
		fmt.Scan(&c, &t)
		if c < minC && t <= tMax {
			minC = c
		}
	}

	if minC == 1001 {
		fmt.Println("TLE")
		return
	}

	fmt.Println(minC)
}
