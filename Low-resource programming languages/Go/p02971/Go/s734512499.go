package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	array := make([]int, n)
	var max = 0
	var max2 = 0
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		if max < a {
			max = a
		}
		if a != max && a > max2 {
			max2 = a
		}
		array[i] = a
	}
	for _, N := range array {
		if N == max {
			fmt.Println(max2)
		} else {
			fmt.Println(max)
		}
	}
}
