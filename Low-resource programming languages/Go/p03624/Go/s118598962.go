package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	bucket := make([]int, 26)
	for _, i := range s {
		bucket[i-97]++
	}

	for i, v := range bucket {
		if v == 0 {
			fmt.Printf(string(i + 97))
			return
		}
	}
	fmt.Println("None")
}
