package main

import "fmt"
import "strconv"

func main() {
	var s string
	fmt.Scan(&s)
	best := 999999999999

	for i := 0; i < len(s)-2; i++ {
		v, _ := strconv.Atoi(s[i : i+3])
		diff := abs(v - 753)
		if best > diff {
			best = diff
		}
	}
	fmt.Println(best)
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
