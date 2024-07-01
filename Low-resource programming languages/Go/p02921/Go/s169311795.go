package main

import (
	"fmt"
	"strings"
)

func main() {
	var s,t string
	fmt.Scan(&s,&t)
	ss := strings.Split(s,"")
	ts := strings.Split(t,"")

	count := 0
	if ss[0] == ts[0] {
		count++
	}

	if ss[1] == ts[1] {
		count++
	}

	if ss[2] == ts[2] {
		count++
	}
	fmt.Println(count)
}