package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	ans := 0
	for i := 0; i < N; i++ {
		var a int
		fmt.Scan(&a)
		for a%2 == 0 {
			ans++
			a /= 2
		}
	}
	fmt.Println(ans)
}
