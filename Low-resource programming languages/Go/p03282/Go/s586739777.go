package main

import (
	"fmt"
	"strconv"
)

func main() {
	var (
		s string
		k int
	)
	fmt.Scan(&s, &k)

	for i := 0; i < k; i++ {
		v, _ := strconv.Atoi(string(s[i]))
		if v == 1 {
			continue
		} else {
			fmt.Println(v)
			return
		}
	}
	fmt.Println(1)
}
