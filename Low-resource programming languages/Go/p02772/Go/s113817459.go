package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i, v := range a {
		fmt.Scan(&v)
		a[i] = v
	}
	check := make([]bool, n)
	for i, v := range a {
		if v%2 == 0 && (v%3 == 0 || v%5 == 0) || v%2 != 0 {
			check[i] = true
		}
	}
	result := "APPROVED"
	for _, v := range check {
		if v == false {
			result = "DENIED"
			break
		}
	}
	fmt.Println(result)
}
