package main

import "fmt"

func main() {
	var w, h, x, y int
	fmt.Scan(&w, &h, &x, &y)
	ans := 0
	if x*2 == w && y*2 == h {
		ans = 1
	}

  fmt.Printf("%.10f %d\n", float64(w*h)/2.0, ans)
}
