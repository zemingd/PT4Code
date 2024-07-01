package main

import "fmt"

func main() {
	var a int
	fmt.Scan(&a)
	h, hm := divRem(a, 3600)
	m, s := divRem(hm, 60)
	fmt.Printf("%d:%d:%d\n", h, m, s)
}

func divRem(divided int, divisor int) (a int, reminder int) {
	a = divided / divisor
	reminder = divided % divisor
	return
}
