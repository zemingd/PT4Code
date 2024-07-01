package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s int
	fmt.Scan(&s)

	i := 0
	set := make(map[string]struct{})

	for {
		st := strconv.Itoa(s)
		if _, ok := set[st]; ok {

			break
		}

		set[st] = struct{}{}
		if s%2 == 0 {
			s /= 2
		} else {
			s = s*3 + 1
		}
		i++
	}

	fmt.Println(i + 1)
}
