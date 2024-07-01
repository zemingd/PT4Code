package main

import (
	"fmt"
)

func main() {
	var s string
	_, _ = fmt.Scan(&s)
	//s = "11011010001011"
	removed := 0
	bs := []byte(s)

	for true {
		// Split by 01
		noSplit01 := true
		for i := 0; i < len(bs) - 1; i++ {
			if bs[i] == '0'  && bs[i+1] == '1' {
				for j := i; j < len(bs) - 2; j++ {
					bs[j] = bs[j+2]
				}
				i--
				removed += 2
				noSplit01 = false
			}
		}


		// Split by 10
		noSplit10 := true
		for i := 0; i < len(bs) - 1; i++ {
			if bs[i] == '1'  && bs[i+1] == '0' {
				for j := i; j < len(bs) - 2; j++ {
					bs[j] = bs[j+2]
				}
				i--
				removed += 2
				noSplit10 = false
			}
		}


		if noSplit01 && noSplit10 {
			break
		}
	}
	fmt.Println(removed)
}