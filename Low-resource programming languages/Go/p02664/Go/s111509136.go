package main

import (
	"fmt"
	"strings"
)

func main() {
	var T string
	fmt.Scan(&T)
	fmt.Println(strings.Replace(T, "?", "D", -1))
}
