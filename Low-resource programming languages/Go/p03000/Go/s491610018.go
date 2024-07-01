package main

import "fmt"

func main() {
	var n, x int
	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &x)

	var l int
	var d int
	var ans int
	var isLimit bool
	for i := 1; i <= n; i++ {
		fmt.Scanf("%d", &l)

		d = d + l
		if x < d {
			isLimit = true
			ans = i
			break
		}
	}
	if isLimit {
		fmt.Println(ans)
	} else {
		fmt.Println(n)
	}
}
