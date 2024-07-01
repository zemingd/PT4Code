package main

import (
	"fmt"
)

func main() {
	var K,S int
	fmt.Scan(&K,&S)
	
	cnt := 0
	for x := 0; x <= K; x++ {
		for y := 0; y <= K; y++ {
			z := S - ( x + y )
			if 0 <= z && z <= K {
				cnt++
			}
		}
	}
	fmt.Println(cnt)
}