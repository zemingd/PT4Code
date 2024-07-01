package main

import (
	"fmt"
)

func main() {
	var s string
	_, _ = fmt.Scan(&s)
	//s = "11011010001011"
	removed := 0
	runes := []rune(s)

	for true {
		// Split by 01
		noSplit01 := true
		for i := 0; i < len(runes) - 1; i++ {
			if runes[i] == rune('0')  && runes[i+1] == rune('1') {
				for j := i; j < len(runes) - 2; j++ {
					runes[j] = runes[j+2]
				}
				i--
				removed += 2
				noSplit01 = false
			}
		}


		// Split by 10
		noSplit10 := true
		for i := 0; i < len(runes) - 1; i++ {
			if runes[i] == rune('1')  && runes[i+1] == rune('0') {
				for j := i; j < len(runes) - 2; j++ {
					runes[j] = runes[j+2]
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