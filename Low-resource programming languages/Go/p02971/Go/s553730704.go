package main

import (
	"fmt"
)

func main() {
	var n int
	var m1 = 0
	var m2 = 0
	array := []int{}
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		array = append(array, a)
		if a > m1 {
			m2 = m1
			m1 = a
		} else if a > m2 {
			m2 = a
		}
	}
	for i := 0; i < n; i++ {
		if array[i] != m1 {
			fmt.Println(m1)
		} else {
			fmt.Println(m2)
		}
	}
}
