package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	res := 0
	for i := 1; i < n+1; i++ {
		if i%2 == 0 {
			continue
		}
		div := 0
		for j := 1; j < i+1; j++ {
			if i%j == 0 {
				div++
			}
		}
		if div == 8 {
			res++
		}
	}
	fmt.Println(res)
}
