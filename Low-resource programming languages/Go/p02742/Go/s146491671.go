package main

import (
	"fmt"
)

func main() {
	var h, w int
	fmt.Scanf("%d %d", &h, &w)
	answer := countMovableCandidates(h, w)
	fmt.Println(answer)
}

func countMovableCandidates(h, w int) int {
	oddRows := h/2 + h%2
	evenRows := h / 2
	oddRowsMovableCell := w/2 + w%2
	evenRowsMovableCell := w / 2

	return (oddRows * oddRowsMovableCell) + (evenRows * evenRowsMovableCell)
}
