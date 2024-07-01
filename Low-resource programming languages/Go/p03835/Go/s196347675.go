package main

import (
	"fmt"
)

func main() {
	var k, s int
	var cnt = 0
	fmt.Scan(&k, &s)
	for x := 0; x <= k; x++ {
		for y := 0; y <= (k - x); y++ {
			for z := 0; z <= (k - x - y); z++ {
				if x+y+z == s {
					cnt++
				}
			}
		}
	}
	fmt.Println(cnt)
}
