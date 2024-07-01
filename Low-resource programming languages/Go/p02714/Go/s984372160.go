package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var s []string

	var tmp string
	fmt.Scan(&n, &tmp)
	s = strings.Split(tmp, "")

	var res int
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			for k := j + 1; k < n; k++ {
				if s[i] != s[j] && s[i] != s[k] && s[j] != s[k] {
					if j-i != k-j {
						res++
					}
				}
			}
		}
	}
	fmt.Println(res)
}
