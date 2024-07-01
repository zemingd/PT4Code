package main

import (
	"fmt"
)


func main() {
	var a, b int
	fmt.Scan(&a,&b)
	
	ans := b
	
	if a>=6 && a<13 {
		ans=b/2 
	} else if a<6 {
		ans=0
	}
	fmt.Println(ans)
}