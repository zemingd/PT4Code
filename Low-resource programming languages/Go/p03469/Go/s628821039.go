package main

import (
	"fmt"
	"strings"
)

func main() {
	var a string
	fmt.Scan(&a)

	fmt.Println(strings.Replace(a, "2017", "2018", 1))

}
