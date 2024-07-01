package main

import "fmt"

func main() {
	var h, m, s int
	fmt.Scan(&s)
	h = s / 60 / 60
	m = (s / 60) % 60
	fmt.Printf("%v:%v:%v\n", h, m, s%60)
}

