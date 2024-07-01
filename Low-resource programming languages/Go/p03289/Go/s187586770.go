package main

import (
	"fmt"
	"strings"
)

func main() {
	var str string

	fmt.Scan(&str)

	flag := true

	idx := strings.Index(str[2:len(str)-1], "C")

	flag = flag && (str[0] == 'A')
	flag = flag && (idx != -1)

	for i := range str {
		if i == 0 || i == idx+2 {
			continue
		}

		if str[i:i+1] != strings.ToLower(str[i:i+1]) {
			flag = false
		}
	}

	if flag {
		fmt.Println("AC")
	} else {
		fmt.Println("WA")
	}
}
