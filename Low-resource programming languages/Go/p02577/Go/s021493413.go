package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	c := 0
	for _, x := range strings.Split(s, "") {
		n, _ := strconv.Atoi(x)
		c += n
	}
	if c % 9 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
