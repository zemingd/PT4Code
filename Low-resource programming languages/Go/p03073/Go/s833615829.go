package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	ss := strings.Split(s, "")

	cnt := 0
	tmp := ""
	for _, s := range ss {
		if tmp == "" {
			tmp = s
			continue
		}

		if tmp == s {
			cnt++
			if s == "0" {
				tmp = "1"
			} else {
				tmp = "0"
			}
			continue
		}
		tmp = s
	}

	fmt.Print(cnt)
}
