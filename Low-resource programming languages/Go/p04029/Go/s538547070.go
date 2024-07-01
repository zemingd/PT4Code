package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d", &n)

	var sum = 0

	for i := 1; i <= n; i++ {
		sum += i
	}
	fmt.Println(sum)
}
