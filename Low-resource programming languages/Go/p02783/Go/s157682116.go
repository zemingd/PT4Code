package main

import "fmt"

func main() {
	var h, a int
	fmt.Scan(&h, &a)

	var ans int
	for h > 0 {
		h -= a
		ans++
	}
	fmt.Println(ans)
}
