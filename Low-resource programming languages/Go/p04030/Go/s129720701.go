package main

import "fmt"

func main() {
	var s string
	var str string
	//input
	fmt.Scan(&s)

	//process
	for _, c := range s {
		if c == 'B' {
			if str != "" {
				str = string([]rune(str)[:len(str)-1])
			}
		} else {
			str = str + string(c)
		}
	}
	fmt.Println(str)
}
