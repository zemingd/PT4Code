package main

import "fmt"

func main() {
	var k, s int
	fmt.Scan(&k, &s)

	c := 0
	for x := 0; x <= k; x++ {
		for y := 0; y <= k; y++ {
			t := s - (x + y)
			if 0 <= t && t <= k {
				c++
			}
		}
	}
	fmt.Println(c)
}
