package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	fmt.Println(heisei(s))
}

func heisei(s string) string {
	i, _ := strconv.Atoi(strings.Replace(s, "/", "", -1))
	if i <= 20190430 {
		return "Heisei"
	}
	return "TBD"
}
