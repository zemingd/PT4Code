package main

import (
	"fmt"
)

func main() {
	var s, w int

	_, _ = fmt.Scanf("%d %d", &s, &w)

	fmt.Println(answer164A(s, w))

}

func answer164A(s int, w int) string {
	if s <= w {
		return "unsafe"
	}
	return "safe"
}
