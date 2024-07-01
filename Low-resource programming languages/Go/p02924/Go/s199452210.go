package main

import "fmt"

func main() {
	var n int
	fmt.Scanf("%d", &n)
	total :=0
	for i:=1; i <= n-1 ; i++ {
		total = total + i
	}

	fmt.Printf("%d", total)
}
