package main

import (
	"fmt"
)

func main() {
	var n,r,s int
	fmt.Scan(&n)
	fmt.Scan(&r)

	if n >=10 {
		s = r
	} else {
		s = r + 100*(10-n)
	}
	fmt.Println(s)
}
