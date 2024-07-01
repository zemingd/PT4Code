package main

import "fmt"

func main() {
	var h, w int
	fmt.Scan(&h, &w)

	a := (h + 1) / 2
	b := h - a
	c := (w + 1) / 2
	d := w - c

	fmt.Println(a*c + b*d)
}
