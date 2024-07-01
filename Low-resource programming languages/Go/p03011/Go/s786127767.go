package main

import (
	"fmt"
)

func min(a,b int) int {
	if a<b {
		return a
	}
	return b
}

func main() {
	var p,q,r int
	fmt.Scan(&p,&q,&r)

	ans := min(p+q,q+r)
	ans = min(ans,r+p)

	fmt.Println(ans)

}


