package main

import "fmt"

func main() {
	var a, b, cnt int
	fmt.Scan(&a, &b)
	if b >= a {
		cnt = a
	} else {
		cnt = a - 1
	}
	fmt.Println(cnt)
}
