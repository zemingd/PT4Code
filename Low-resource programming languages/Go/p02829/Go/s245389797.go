package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	arr := [3]int{1, 2, 3}
	result := []int{}
	for _, v := range arr {
		if v != a && v != b {
			result = append(result, v)
		}
	}
	fmt.Println(result[0])
}
