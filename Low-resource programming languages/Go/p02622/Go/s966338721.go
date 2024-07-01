package main

import "fmt"

func main() {
	var a string
	var b string
	fmt.Scan(&a)
	fmt.Scan(&b)
	var ans int
	for i := 0; i < len(a); i++ {
		if a[i] != b[i] {
			ans++
		}
	}
	println(ans)
}
