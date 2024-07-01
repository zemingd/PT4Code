package main

import (
	"fmt"
	"strings"
)

func main() {
	var (
		n, k int
		s    string
	)

	fmt.Scan(&n, &k)
	fmt.Scan(&s)

	slice := strings.Split(s, "")
	slice[k] = strings.ToLower(slice[k])
	s = strings.Join(slice, "")

	fmt.Println(s)
}
