package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	s := []int{a, b}
	if !contain(s, 1) {
		fmt.Println(1)
	}
	if !contain(s, 2) {
		fmt.Println(2)
	}
	if !contain(s, 3) {
		fmt.Println(3)
	}
}

func contain(s []int, i int) bool {
	for _, v := range s {
		if i == v {
			return true
		}
	}
	return false
}