package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	pageCount, err := strconv.Atoi(os.Args[1])
	if err != nil {
		fmt.Println(err)
	}
	var needPageCount int

	needPageCount = pageCount / 2
	if pageCount%2 != 0 {
		needPageCount++
	}
	fmt.Println(needPageCount)

}