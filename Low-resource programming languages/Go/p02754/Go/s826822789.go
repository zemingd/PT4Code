package main

import "fmt"

func main() {
	var n, a, b int
	fmt.Scanf("%d %d %d", &n, &a, &b)
	if a == 0 {
		fmt.Print("0")
		return
	}
	var x int
	for x = 1; n-a*x-b*x >= 0; x++ {
	}
	ans := n - b*(x-1)
	fmt.Printf("%d", ans)
}
