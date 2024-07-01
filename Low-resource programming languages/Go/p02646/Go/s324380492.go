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
		fmt.Println(a)
		fmt.Println(b)
		if a == b {
			fmt.Println("YES")
			return
		}
	}
	if a != b && a < b {
		fmt.Println("NO")
		return
	}
}