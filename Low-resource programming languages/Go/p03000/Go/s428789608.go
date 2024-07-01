package main

import "fmt"

func main() {
	var n, x int
	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &x)

	var l int
	var d int
	var ans int
	for i := 1; i <= n; i++ {
		fmt.Scanf("%d", &l)

		d = d + l
		if x <= d {
			ans = i
			break
		}
	}
	fmt.Println(ans)

}
