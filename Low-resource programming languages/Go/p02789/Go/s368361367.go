package main

import (
	// "os"
	"fmt"
	"strconv"
)

func main() {
	var aa,bb string
	fmt.Scanf("%s %s", &aa, &bb)

	var result string
	if aa > bb {
		num, _ := strconv.Atoi(aa)
		// fmt.Fprintf(os.Stderr, "%v\n", num)
		for ii:=0;ii<num;ii++ {
			result += bb
		}
	} else {
		num, _ := strconv.Atoi(bb)
		// fmt.Fprintf(os.Stderr, "%v\n", num)
		for ii:=0;ii<num;ii++ {
			result += aa
		}
	}
	fmt.Printf("%s\n", result)
}
