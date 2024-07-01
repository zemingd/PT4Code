package main

import "fmt"

func main() {
	var k, s int
	fmt.Scan(&k, &s)
	ans := 0
	for x := 0; x <= k; x++ {
		for y := 0; y <= k; y++ {
			v := s - x - y
			if 0 <= v && v <= k {
				ans++
			}
		}
	}
	fmt.Println(ans)
}
