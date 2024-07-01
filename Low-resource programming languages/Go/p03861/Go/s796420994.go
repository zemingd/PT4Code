package main

import "fmt"

func main() {
	var a, b, n uint64
	fmt.Scan(&a, &b, &n)
	if a%n != 0 {
		a = n * (1 + a/n)
	}
	if b%n != 0 {
		b = n * (b / n)
	}
	var cnt uint64
	if a > b {
		cnt = 0
	} else {
		cnt = 1 + (b-a)/n
	}
	fmt.Println(cnt)
}
