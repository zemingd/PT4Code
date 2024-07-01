package main

import "fmt"

func main() {
	n := make([]int, 2)
	for i := 0; i < 2; i++ {
		fmt.Scan(&n[i])
	}
	if contains(n, 1) == false {
		fmt.Println(1)
	}
	if contains(n, 2) == false {
		fmt.Println(2)
	}
	if contains(n, 3) == false {
		fmt.Println(3)
	}
}

func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}
