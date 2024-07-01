package main

import "fmt"

func main() {
	var k int
	fmt.Scan(&k)

	a := 7
	for i := 1; i <= k; i++ {
		if a%k == 0 {
			fmt.Println(i)
			return
		}
		a = a*10 + 7
		a %= k
	}
	fmt.Println(-1)
}
