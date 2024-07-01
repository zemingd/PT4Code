package main

import (
	"fmt"
)

func main() {
	var h,n,a int
	fmt.Scan(&h,&n)
	
	damage := 0;
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		damage += a
	}
	
	ans := ""
	if damage < h {
		ans = "No"
	} else {
		ans = "Yes"
	}
	fmt.Println(ans)
}