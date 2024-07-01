package main

import "fmt"

func main() {
	var n, x int
	fmt.Scan(&n, &x)
	prev := 0
	ans := 1
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		next := prev + a
		if next > x {
			break
		}
		ans++
		prev = next
	}
	fmt.Println(ans)
}
