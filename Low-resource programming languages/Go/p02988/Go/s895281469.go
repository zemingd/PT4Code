package main

import (
	"fmt"
)

func main() {
	var a int
	var b int
	c := []int{}
	fmt.Scan(&a)
	i := 0
	for i < a {
		fmt.Scan(&b)
		c = append(c, b)
		i++
	}
	i = 0
	count := 0
	for i < (a - 2) {
		if c[i] < c[i+1] {
			if c[i+1] < c[i+2] {
				count++
			}
		}
		if c[i] > c[i+1] {
			if c[i+1] > c[i+2] {
				count++
			}
		}
		i++
	}
	fmt.Println(count)
}
