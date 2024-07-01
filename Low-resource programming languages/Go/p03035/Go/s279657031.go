package main

import (
	"fmt"
	//"math"
)

func main() {
	var a,b int 
	fmt.Scanf("%d %d", &a,&b)
	if a >= 13{
		fmt.Print(b)
	}else if a >= 6{
		fmt.Print(b/2)
	}else{
		fmt.Print(0)
	}
}
