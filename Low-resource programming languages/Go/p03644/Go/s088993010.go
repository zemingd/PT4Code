package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	for i := n; i >= 1; i-- {
		if i&(i-1) == 0 {
			fmt.Println(i)
			return
		}
	}
}
