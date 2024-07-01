package main

import (
	"fmt"
)

func main() {
	var n,l int
	fmt.Scan(&n,&l)

	ans := n*(2*l+n-1)/2
	if !(l+n-1>=0 && l<=0) {
		if l>0 {
			ans -= l
		} else {
			ans -= l+n-1
		}
	}
	fmt.Println(ans)
}
