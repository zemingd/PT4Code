package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	if strings.Count(s, "A") > 0 && strings.Count(s, "B") > 0 {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")

}
