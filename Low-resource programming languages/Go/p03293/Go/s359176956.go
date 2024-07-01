package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	result := "No"
	for i := 0; i < len(s); i++ {
		if s == t {
			result = "Yes"
			break
		} else {
			var tmp string
			for j := 0; j < len(s); j++ {
				tmp = s[1:len(s)] + string(s[0])
			}
			s = tmp
		}
	}
	fmt.Println(result)
}
