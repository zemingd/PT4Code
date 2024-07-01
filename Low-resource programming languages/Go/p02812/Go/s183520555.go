package main

import (
	"fmt"
	"strings"
)

func main() {
	var N int
	var S string
	fmt.Scan(&N)
	fmt.Scan(&S)
	fmt.Println(strings.Count(S, "ABC"))
}
