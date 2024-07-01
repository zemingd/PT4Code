package main

import "fmt"

func main() {
	var k int
	fmt.Scan(&k)
	appears := make([]bool, k)
	count := 1
	a := 7
	a %= k
	if a == 0 {
		fmt.Println(1)
		return
	}

	for !appears[a] {
		appears[a] = true
		a = (a*10 + 7) % k
		count++
		if a == 0 {
			fmt.Println(count)
			return
		}
	}
	fmt.Println(-1)
}
