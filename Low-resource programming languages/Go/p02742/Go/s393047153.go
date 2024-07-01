package main

import (
	"fmt"
)

func main() {
	var (
		h, w int
	)
	fmt.Scan(&h, &w)

	if h % 2 == 0 {
		fmt.Println(h*w/2)
	} else {
		fmt.Println((h*(w-1)/2) + ((h+2-1)/ 2))
	}

}
