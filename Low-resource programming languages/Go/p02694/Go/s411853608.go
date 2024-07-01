package main

import (
	"fmt"
)

func main() {

	var x int
	fmt.Scan(&x)

	var mon int
	var ans int
	mon = 100

	for {
		if x <= mon {
			break
		}
		mon += mon / 100
		ans++
	}

	fmt.Println(ans)
}