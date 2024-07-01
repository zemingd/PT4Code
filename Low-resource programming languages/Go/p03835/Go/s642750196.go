package main

import "fmt"

func main() {
	var k, s, count int
	fmt.Scan(&k, &s)

	for x := 0; x <= k; x++ {
		for y := 0; y <= k; y++ {
			z := s - x - y

			if z >= 0 && z <= k {
				count++
			}
		}
	}

	fmt.Println(count)
}
