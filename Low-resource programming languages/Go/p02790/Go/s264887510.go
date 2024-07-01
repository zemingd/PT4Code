package main

import (
	"fmt"
)

func main() {
	var aa,bb string
	fmt.Scanf("%d", &aa, &bb)
	var result string
	if aa > bb {
		for ii:=0;ii<strconv.Atoi(aa);ii++ {
			result += bb
		}
	} else {
		for ii:=0;ii<strconv.Atoi(bb);ii++ {
			result += aa
		}
	}
	fmt.Printf("%s\n", result)
}
