package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	ans := 1
	mx := 0
	for i := 1; i <= n; i++ {
		t := i
		c := 0
		for t%2 == 0 {
			c++
			t /= 2
		}
		if mx < c {
			mx = c
			ans = i
		}
	}
	fmt.Println(ans)
}
