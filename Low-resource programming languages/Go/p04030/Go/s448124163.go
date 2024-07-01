package main

import (
	"fmt"
)

func main() {
	var s string
	var r string

	fmt.Scan(&s)

	for _, l := range s {
		switch l {
		case '0':
			r += "0"
		case '1':
			r += "1"
		case 'B':
			if len(r) > 0 {
				r = r[0 : len(r)-1]
			}
		}
	}

	fmt.Println(r)

}
