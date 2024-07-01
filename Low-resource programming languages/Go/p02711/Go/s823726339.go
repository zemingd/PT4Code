package main

import (
	"fmt"
)

func main() {
	var n string
	fmt.Scan(&n)
	ans := "Yes"
	switch{
	case n[0]=='7':
	case n[1]=='7':
	case n[2]=='7':
	default:
		ans = "No"
	}

	fmt.Println(ans)

}