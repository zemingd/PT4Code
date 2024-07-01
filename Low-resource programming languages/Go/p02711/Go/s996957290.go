package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	s := strconv.Itoa(n)
	if strings.Index(s, "7") != -1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
