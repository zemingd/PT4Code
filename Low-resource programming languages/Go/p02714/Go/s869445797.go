package main

import (
	"fmt"
	"strings"
)

var n int
var s []string

type key struct {
	k1, k2 int
}

var memo = make(map[key]bool)

func equal(n, m int) bool {
	if v, ok := memo[key{n, m}]; ok {
		return v
	}

	res := s[n] == s[m]
	memo[key{n, m}] = res
	return res
}

func main() {
	var tmp string
	fmt.Scan(&n, &tmp)
	s = strings.Split(tmp, "")

	var res int
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			for k := j + 1; k < n; k++ {
				if !equal(i, j) && !equal(i, k) && !equal(j, k) {
					if j-i != k-j {
						res++
					}
				}
			}
		}
	}
	fmt.Println(res)
}
