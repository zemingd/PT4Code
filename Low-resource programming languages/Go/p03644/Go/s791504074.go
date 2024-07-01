package main

import "fmt"

func main() {
	var in int
	fmt.Scan(&in)
	ans := 1
	for ans*2 <= in {
		ans = ans * 2
	}
	fmt.Println(ans)
}
