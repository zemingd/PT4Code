package main

import (
	"fmt"
)

func main() {
	var p,q,r int
	fmt.Scan(&p,&q,&r)

	if p+q <= q+r && p+q <= r+p {
		fmt.Println(p+q)
	} else if q+r <= r+p && q+r <= p+q {
		fmt.Println(q+r)
	} else {
		fmt.Println(r+p)
	}
}
