package main

import (
	"fmt"
)

func main() {
	var a,b int
	fmt.Scan(&a,&b)
	
	origin := a
	cnt := b
	if a > b {
		origin = b
		cnt = a
	}

	for i := 0; i < cnt; i++ {
		fmt.Printf("%d",origin)
	}
	
}