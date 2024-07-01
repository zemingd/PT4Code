package main

import "fmt"

func main() {
	var k, s int
	fmt.Scan(&k, &s)
	ans := 0
	for i := 0; i <= k; i++ {
		s2 := s - i
		if s2 > 2*k {
		} else if s2 <= k {
			ans += s2 + 1
		} else {
			ans += 2*k - s2 + 1
		}
	}
	fmt.Println(ans)
}
