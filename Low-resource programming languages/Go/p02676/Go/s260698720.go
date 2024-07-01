package main

import (
	"fmt"
	"strings"
)

func main() {
	var k int
	var s string
	fmt.Scan(&k, &s)

	ans := exec(k, s)
	fmt.Println(ans)
}

func exec(k int, s string) string {
	l := strings.Split(s, "")

	if len(l) < k {
		return s
	}

	var v string
	for i := 0; i < k; i++ {
		v += l[i]
	}
	return v + "..."
}
