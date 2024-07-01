package main

import "fmt"

func divmod(a, b int) (int, int) {
	return a / b, a % b
}

func main() {
	var s int
	fmt.Scanln(&s)
	hh, s := divmod(s, 60*60)
	mm, ss := divmod(s, 60)
	fmt.Printf("%d:%d:%d\n", hh, mm, ss)
}
