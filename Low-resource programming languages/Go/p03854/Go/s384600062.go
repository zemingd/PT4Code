package main

import (
	"fmt"
	"regexp"
)

func main() {
	var str string
	fmt.Scan(&str)

	for 0 < len(str) {
		before := len(str)

		rep := regexp.MustCompile(`eraser$|erase$|dreamer$|dream$`)
		str = rep.ReplaceAllString(str, "")

		after := len(str)
		if before == after {
			fmt.Println("NO")
			return
		}
	}
	fmt.Println("YES")
}
