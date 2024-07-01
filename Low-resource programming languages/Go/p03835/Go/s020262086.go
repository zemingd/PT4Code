package main

import "fmt"

func main() {
	var k, s, ans int
	fmt.Scan(&k, &s)
	for x := 0; x <= k; x++ {
		for y := 0; y <= k; y++ {
			z := s - x - y
			if 0 <= z && z <= k {
				ans++
			}
		}
	}
	fmt.Println(ans)
}