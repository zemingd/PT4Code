package main

import (
	"fmt"
)

func main(){
	var s string
	var l int
	fmt.Scan(&s)

	for _, v := range s {
		if v == 'A' {
			l = 0
		}else if v == 'Z' {
			l++
			break
		}

		l++
	}

	fmt.Println(l)
}
