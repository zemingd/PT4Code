package main 

import {
	"fmt",
	"math"
}

var d, t, s float64

func main() {
	fmt.Scan(&d, &t, &s)
	ans := "No"
	if d / s <= t {
		ans = "Yes"
	}
	fmt.Println(ans)
}