package main

import "fmt"

func main() {
	var k, s int
	fmt.Scan(&k, &s)
	ans := 0
	for x := 0; x <= k; x++ {
		for y := 0; y <= k; y++ {
			z := s - x - y
			if 0 <= z && z <= k && (x+y+z) <= 3*k {
				// fmt.Printf("x,y,z -> %d,%d,%d\n", x, y, z)
				ans++
			}
		}
	}
	fmt.Println(ans)
}
