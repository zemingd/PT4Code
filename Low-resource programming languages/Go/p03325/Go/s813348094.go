package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	ans := 0
	var a int
	for i := 0; i < N; i++ {
		fmt.Scan(&a)
		if a%2 == 0 {
			for a%2 == 0 {
				a = a / 2
				ans++
			}
		}
	}
	fmt.Println(ans)
}
