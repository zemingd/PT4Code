package main

import "fmt"

func main() {
	var k int
	fmt.Scan(&k)

	a := 0
	for i := 1; i <= k; i++ {
		a *= 10
		a += 7
		a %= k
		if a%k == 0 {
			fmt.Println(i)
			return
		}
	}
	fmt.Println(-1)
}
