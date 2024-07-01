package main

import (
	"fmt"
	"os"
)

func main() {
	pageCount := os.Args[0]
	var needPageCount int

	needPageCount := pageCount / 2
	if pageCount%2 != 0 {
		needPageCount++
	}
	fmt.Println(needPageCount)

}