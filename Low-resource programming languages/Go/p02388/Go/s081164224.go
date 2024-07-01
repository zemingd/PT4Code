package main

import (
	"fmt"
	"strconv"
)

func main() {
	var input string
	fmt.Scanln(&input)
	var i, _ = strconv.ParseInt(input, 10, 0)
	fmt.Println(i * i * i)
}

