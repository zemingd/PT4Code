package main

import (
	"fmt"
)

func main() {
	var h, w int
	fmt.Scanf("%d %d", &h, &w)

	fmt.Println(answer(h, w))
}

func answer(h int, w int) int64 {
	if h%2 != 0 && w%2 != 0 {
		return (int64(h)*int64(w)+1)/2
	}
	return int64(h)*int64(w)/2
}
