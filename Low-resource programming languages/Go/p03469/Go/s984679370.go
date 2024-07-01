package main

import (
	"fmt"
	"strings"
)

func main() {
	var S string
	fmt.Scan(&S)
	fmt.Println(strings.Replace(S, "2017/", "2018/", 1))
}