package main

import (
	"fmt"
	"strings"
)

func main() {
	var t string
	fmt.Scan(&t)
	ans := strings.Replace(t, "?", "D", -1)
	fmt.Println(ans)
}
