package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	blacked := false
	bCnt := 0.0
	wCnt := 0.0

	for i, r := range s {
		if i == len(s)-1 {
			break
		}
		if r == '#' {
			if blacked {
				bCnt++
			}
			blacked = true
		} else if blacked {
			wCnt++
		}
	}

	fmt.Println(math.Min(bCnt, wCnt))
}
