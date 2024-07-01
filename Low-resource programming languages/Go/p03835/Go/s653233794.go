package main

import "fmt"

func main() {
	var k, s int
	fmt.Scan(&k, &s)

	var cnt int
	for x := 0; x <= k; x++ {
		for y := 0; y <= k; y++ {
			z := s - (x + y)
			if x+y <= s && z <= k {
				cnt += 1
			}
		}
	}
	fmt.Println(cnt)
}
