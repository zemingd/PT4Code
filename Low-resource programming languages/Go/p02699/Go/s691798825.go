package main

import (
	"fmt"
)

func main() {
	var s, w int
	fmt.Scan(&s,&w)
	
	if s <= w {
		fmt.Println("unsafe")
		return
	}
	fmt.Println("safe")
}