package main

import (
  "fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	t := make([]int, n)
	for i := range t {
		fmt.Scan(&t[i])
	}

	for _, v := range t {
		if v % 2 == 0 {
			if v % 3 == 0 || v % 5 == 0 {
				continue
			}
			fmt.Println("DENIED")
			return
		}
	}

	fmt.Println("APPROVED")
}