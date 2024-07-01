package main

import "fmt"

var N int

func main() {
	fmt.Scan(&N)
	ans := 0
	for i := 1; i <= N; i++ {
		if i%3 != 0 && i%5 != 0 {

			ans += i
		}

	}
	fmt.Println(ans)

}
