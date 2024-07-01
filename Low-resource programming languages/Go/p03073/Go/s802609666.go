package main

import (
	"fmt"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)
	
	sint := make([]int,len(s))
	for i := range sint {
		sint[i],_ = strconv.Atoi(string(s[i]))
	}
	
	ans := 0
	if len(s) > 1 {
		bef := sint[0]
		for i := 1; i < len(s); i++ {
			if bef == sint[i] {
				sint[i] = 1 - sint[i]
				ans++
			}
			bef = sint[i]
		}
	}
	fmt.Println(ans)
}