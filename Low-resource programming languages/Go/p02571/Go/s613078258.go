package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	var t string
	fmt.Scan(&t)

	s1 := strings.Split(s, "")
	s2 := strings.Split(t, "")

	length1 := len(s1)
	length2 := len(s2)

	length := length1 - length2
	var count int
	max := 0
	for i := 0; i < length; i++ {
		count = 0
		for j := 0; j < length2; j++ {
			if s1[j+i] == s2[j]{
				count++
			}
		}
		if max < count{
			max = count
		}
	}

	ans := length2 - max
	fmt.Println(ans)
}
