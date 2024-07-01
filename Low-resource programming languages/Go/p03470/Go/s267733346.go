package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	set := make(map[int]bool)
	for i := 0; i < N; i++ {
		var m int
		fmt.Scan(&m)
		set[m] = true
	}
	fmt.Println(len(set))
}
