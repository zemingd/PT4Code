package main

import (
	"fmt"
)

func main() {
	var a,b,c int
	fmt.Scan(&a,&b,&c)
	
	ans := "Yes"
	if a == b &&  b == c {
		ans = "No"
	} else if a != b && b != c && c != a {
		ans = "No"
	}
	fmt.Println(ans)
}