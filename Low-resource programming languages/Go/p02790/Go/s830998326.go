package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	as := strings.Repeat(strconv.Itoa(a), b)
	bs := strings.Repeat(strconv.Itoa(b), a)

	if as < bs {
		fmt.Println(as)
	} else {
		fmt.Println(bs)
	}
}
