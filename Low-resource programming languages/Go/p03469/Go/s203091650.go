package main

import (
	"fmt"
)

func main() {
	var n int
	var a[101] int
	count := 0

	for i:=1; i<100; i++ {
		a[i] = 0
	}

	fmt.Scanf("%d", &n)
	for i:=0; i<n; i++ {
		var x int
		fmt.Scanf("%d", &x)
		if a[x] == 0 {
			count++
		}
		a[x]++
	}

	fmt.Print(count)
}