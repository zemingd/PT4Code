package main

import (
	"fmt"
)

func main() {
	var a,b,c int
	fmt.Scan(&a,&b,&c)

	var ans string
	if a == b && a == c {
		ans = "No"
	} else if a != b && a != c && b != c{
		ans = "No"
	} else {
		ans = "Yes"
	}

	fmt.Println(ans)
}