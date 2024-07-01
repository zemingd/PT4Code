package main

import (
	"fmt"
)

func main() {
	var n, r int64
	fmt.Scan(&n, &r)

	if n >= 10 {
		fmt.Println(r)
	} else {
		fmt.Println(r + 100*(10-n))
	}
}
