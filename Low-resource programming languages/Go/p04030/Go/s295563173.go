package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	ss := strings.Split(s, "")

	ans := make([]string, len(s))
	for _, v := range ss {
		if v == "B" {
			ans = ans[:len(ans)-1]
		} else {
			ans = append(ans, v)
		}
	}

	fmt.Println(strings.Join(ans, ""))
}
