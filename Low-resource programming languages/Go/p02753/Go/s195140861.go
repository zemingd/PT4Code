package main

import (
	"fmt"
	"strings"
)

func main() {
	var companys string
	fmt.Scan(&companys)

	fmt.Println(check(strings.Split(companys, "")))
}

func check(tSlice []string) string {
	for _, str := range tSlice {
		if str != tSlice[0] {
			return "Yes"
		}
	}
	return "No"
}
