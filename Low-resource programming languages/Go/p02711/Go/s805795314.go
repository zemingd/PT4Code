package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	if strings.Count(s, "7") > 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
