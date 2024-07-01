package main

import "fmt"

func main() {
	var r, d, x int
	fmt.Scan(&r, &d, &x)
	arr := make([]int, 11)
	arr[0] = x
	for i := 1; i < 11; i++ {
		arr[i] = r * arr[i - 1] - d
		fmt.Println(arr[i])
	}
}