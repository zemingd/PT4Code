package main

import "fmt"

func main() {
	var k, s int
	fmt.Scanf("%d %d\n", &k, &s)
	cnt := 0
	for x := 0; x <= k; x++ {
		for y := 0; y <= k; y++ {
			r := s - x - y
			if 0 <= r && r <= k {
				cnt++
			}
		}
	}
	fmt.Println(cnt)
}
