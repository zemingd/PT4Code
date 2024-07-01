package main

import "fmt"

func main() {
	var a,b,c,d int
	fmt.Scan(&a,&b,&c,&d)
	max := a*c
	max = hoge(a*d, max)
	max = hoge(b*d, max)
	max = hoge(b*c, max)
	fmt.Println(max)
}

func hoge(n, max int) int {
	if n > max {
		max=n
	}
	return max
}