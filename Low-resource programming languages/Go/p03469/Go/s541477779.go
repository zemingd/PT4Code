package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	fmt.Println(strings.Replace(s,"7","8",1))
}
