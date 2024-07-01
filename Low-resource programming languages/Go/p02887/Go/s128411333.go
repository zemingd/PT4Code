package main

import (
	"fmt"
)

func main() {

	var N int
	fmt.Scan(&N)

	var S string
	fmt.Scan(&S)

	var nowString int32 = -100

	var ans = 0


	for _, x := range S {
		if x != nowString {
			ans++
			nowString = x
		}
	}

	fmt.Println(ans)

}

