package main

import (
	"fmt"
)

func max(v1,v2 int) int{
	if v1 > v2 {
		return v1
	} else {
		return v2
	}
}

func main() {
	var a, b int
	
	fmt.Scanf(&a,&b)
	
	fmt.Printf("%d",max(max(a+b,a-b),a*b))

}