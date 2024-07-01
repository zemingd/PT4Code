package main

import "fmt"

func main() {
	var s string
	var str string
	//input
	fmt.Scan(&s)

	//process
	for pos, c := range s {
		if c == 'B' {
			if str != "" {
				str = string([]rune(s)[:pos-1])
			}
		} else {
			str = str + string(c)
		}
	}
	fmt.Println(str)
}
