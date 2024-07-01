package main

import (
	"fmt"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s)
	fmt.Scan(&t)

	st := []rune(t)

	preInd := -1
	cnt := 0

	for _, v := range st {
		ind := strings.Index(s, string(v))
		if ind == -1 {
			fmt.Println(ind)
			return
		}

		if preInd >= ind {
			cnt++
		}
		preInd = ind
	}

	total := len(s)*cnt + preInd + 1
	fmt.Println(total)
}
