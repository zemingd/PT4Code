package main

import (
	"fmt"
)

func main() {
	var str string

	fmt.Scan(&str)
	S := []rune(str)
	l := len(S)

	ret := "AC"
	cnt := 0
	for i, c := range S {
		if i == 0 {
			if c != 'A' {
				ret = "WA"
				break
			}
		} else if 2 <= i && i <= (l-2) {
			if c == 'C' {
				cnt++
				if cnt > 1 {
					ret = "WA"
					break
				}
			} else if c < 'a' || 'z' < c {
				ret = "WA"
				break
			}
		} else {
			if c < 'a' || 'z' < c {
				ret = "WA"
				break
			}
		}
	}

	if ret == "AC" && cnt == 0 {
		ret = "WA"
	}

	fmt.Println(ret)
}
