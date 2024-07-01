package main

import "fmt"

func main() {
	var k, s, z int
	fmt.Scan(&k, &s)

	ans := 0
	for x := 0; x <= k; x++ {
		for y := 0; y <= k; y++ {
			z = s - x - y
			if 0 <= z && z <= k {
				ans++
			}
		}
	}

	fmt.Println(ans)
}
