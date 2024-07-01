package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	renga := make([]int, N)
	for i, _ := range renga {
		fmt.Scan(&renga[i])
	}
	var count int
	ff := false
	a := 1
	for _, v := range renga {
		if v == a {
			a++
			ff = true
		} else {
			count++
		}
	}

	if !ff {
		fmt.Println(-1)
	} else {
		fmt.Println(count)
	}
}