package main

import (
	"fmt"
)

func main() {
	var s int
	fmt.Scan(&s)

	var as []int

	as = append(as,s)
	newVal := 0
	for i := 1; i <= 1000000; i++{
		if as[i-1] % 2 == 0 {
			newVal = as[i-1]/2
		} else {
			newVal = 3 * as[i-1]+1
		}
		for _,v := range as {
			if v == newVal {
				fmt.Println(i+1)
				return
			}
		}
		as = append(as,newVal)
	}
}