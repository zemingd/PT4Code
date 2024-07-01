package main

import (
	"fmt"
)

func main() {
	var aa string
	fmt.Scanf("%s", &aa)
	length := len(aa)
	count := 0
	for ii := 0; ii < length/2; ii++ {
		if aa[ii] != aa[length-1-ii] {
			count++
		}
	}
	fmt.Printf("%d\n", count)
}
