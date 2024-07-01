package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	replaced := strings.Replace(s, "2017", "2018", 1)

	fmt.Println(replaced)
}
