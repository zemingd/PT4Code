package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	ls := strings.Split(s, "")

	result := []string{}
	for i, x := range ls {
		if x != "B" {
			result = append(result, x)
		} else if i != 0 && x == "B" {
			length := len(result)
			result = result[:length-1]
		}
	}
	r := strings.Join(result, "")
	fmt.Println(r)
}
