package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := []int{64, 32, 16, 8, 4, 2, 1}
	for _, v := range a {
		if n >= v {
			fmt.Println(v)
			return
		}
	}
}