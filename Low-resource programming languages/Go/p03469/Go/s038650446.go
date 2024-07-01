package main

import (
	"fmt"
	"strings"
)

func main() {
	var str string

	fmt.Scanf("%s", &str)
	fmt.Printf(strings.Replace(str, "2017", "2018", 1))
}
