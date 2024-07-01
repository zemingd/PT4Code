package main

import "fmt"

var m map[int]int

func main() {
	var N, r int
	fmt.Scan(&N)
	arr := make([]int, N)
	for i := range arr {
		fmt.Scan(&arr[i])
	}
	for i := 0; i < len(arr); i++ {
		r += arr[i] - 1
	}
	fmt.Println(r)
}