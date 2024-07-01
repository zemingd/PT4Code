package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	ss := strings.Split(s,"")

	count := 0
	for i := 0; i < len(s)/2; i ++ {
		if ss[i] != ss[len(ss)-1 -i] {
			count ++
		}
	}
	fmt.Println(count)
}