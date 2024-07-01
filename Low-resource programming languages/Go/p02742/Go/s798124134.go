package main

import "fmt"

func main() {
	var h, w uint64
	fmt.Scanf("%d %d", &h, &w)

	hl := h/2 + h%2
	hly := w/2 + w%2
	hs := h / 2
	hsy := w / 2

	ans := hl*hly + hs*hsy
	fmt.Printf("%d", ans)
}
