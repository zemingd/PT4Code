package main

import (
	"fmt"
)

func min(a,b int) int {
	if a< b {
		return a
	}
	return b
}

func main() {
	var p,q,r int
	fmt.Scan(&p, &q, &r)
	ans := min(min(p+q, p+r), q+r)
	fmt.Println(ans)
}