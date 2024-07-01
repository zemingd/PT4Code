package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)
	slice := strings.Split(s, "")
	var res int
	for i, s := range slice {
		n := i + 1
		for j, ss := range slice[n:] {
			if s != ss {
				keep1 := map[string]int{}
				keep1[ss] = j
				nn := j + n + 1
				for k, sss := range slice[nn:] {
					if s != sss && ss != sss {
						keep2 := map[string]int{}
						keep2[sss] = k
						if keep1[ss] != keep2[sss] {
							res++
							continue
						}
					}
				}
			}
		}
	}
	fmt.Println(res)
}