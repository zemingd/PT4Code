package main

import "fmt"

func main() {
	var n, x, t, ans int
	fmt.Scan(&n, &x, &t)
	
	for n > 0 {
		n -= x
		ans += t
	}
	fmt.Println(ans)
}