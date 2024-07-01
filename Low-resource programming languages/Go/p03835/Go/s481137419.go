package main

import "fmt"

func main() {
	var k, s int
	fmt.Scan(&k, &s)

	cnt := 0
	for x := 0; x <= k; x++ {
		for y := 0; y <= k; y++ {
			r := s - x - y
			if r >= 0 && r <= k {
				cnt++
			}
		}
	}

	fmt.Println(cnt)
}
