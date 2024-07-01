package main

import "fmt"

func main() {
	var a, b, v, w, t int64
	fmt.Scan(&a, &v)
	fmt.Scan(&b, &w)
	fmt.Scan(&t)

	for i := 0; i < int(t); i++ {
		a += v
		b += w
		if a == b {
			fmt.Println("YES")
			return
		}
		if a > b {
			fmt.Println("YES")
			return
		}
	}
	if a != b {
		fmt.Println("NO")
		return
	}
}