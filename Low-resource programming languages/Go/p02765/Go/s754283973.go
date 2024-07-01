package main

import (
	"fmt"
)

func main()  {
	var N int
	var R int
	_, _ = fmt.Scan(&N, &R)

	if N >= 10 {
		fmt.Println(R)
		return
	} else {
		tmp := 100 * (10 - N)
		fmt.Println(R + tmp)
		return
	}
}
