package main

import "fmt"

func main() {
	var a, b, v, w int64
	var t int
	fmt.Scan(&a, &v)
	fmt.Scan(&b, &w)
	fmt.Scan(&t)

	for i := 0; i < t; i++ {
		a += v
		b += w
		if a == b {
			fmt.Println("YES")
			return
		}
	}
	fmt.Println("NO")
}