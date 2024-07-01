package main

import "fmt"

func main() {
	var k int
	fmt.Scan(&k)
	var r, ans int
	m := make(map[int]bool)
	for {
		ans++
		r *= 10
		r %= k
		r += 7 % k
		r %= k
		if r == 0 {
			fmt.Println(ans)
			return
		}
		if m[r] {
			fmt.Println("-1")
			return
		}
		m[r] = true
	}
}
