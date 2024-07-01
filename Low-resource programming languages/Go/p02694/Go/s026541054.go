package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)

	ans := 0
	for i := 100; i < x; {
		i += (i / 100)
		ans++
	}
	fmt.Println(ans)
}
