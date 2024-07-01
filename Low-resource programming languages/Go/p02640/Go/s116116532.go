package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)
	ans := "No"
	for c := 0; c <= x; c++ {
		t := x - c
		if c*2+4*t == y {
			ans = "Yes"
			break
		}
	}
	fmt.Println(ans)
}
