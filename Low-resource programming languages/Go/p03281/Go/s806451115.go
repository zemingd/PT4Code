package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	count := 0
	for i := 1; i <= n; i += 2 {
		tmp := 0
		for j := 1; j <= i; j += 2 {
			if i % j == 0 {
				tmp++
			}
		}
		if tmp == 8 {
			count++
		}
	}
	fmt.Println(count)
}