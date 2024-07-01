package main

import "fmt"

func main() {
	var d int
	var n int
	var ans int

	fmt.Scan(&d, &n)

	switch d {
	case 0:
		ans = n
	case 1:
		ans = n * 100
	case 2:
		ans = n * 100 * 100
	}

	fmt.Println(ans)
}