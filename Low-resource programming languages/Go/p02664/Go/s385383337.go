package main

import (
	"fmt"
	"strings"
)

func main() {
	var t string
	fmt.Scan(&t)
	ans := t

	ans = strings.Replace(ans, "?", "D", -1)
	fmt.Println(ans)
}
