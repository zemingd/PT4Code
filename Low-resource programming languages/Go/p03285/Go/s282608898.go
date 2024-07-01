package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	sum := 0
	for i := 0; i <= 100; i += 4 {
		sum = i
		for j := 0; sum <= n; j += 7 {
			sum += j
			if sum == n {
				fmt.Println("Yes")
				return
			}
		}
		sum = 0
	}
	fmt.Println("No")
}
