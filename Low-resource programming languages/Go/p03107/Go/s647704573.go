package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	//_, _ = fmt.Scan(&s)
	s = "11011010001011"
	removed := 0
	noSplit00 := false
	noSplit11 := false

	for true {
		// Split by 00
		sp := strings.Split(s, "00")
		removed += (len(sp) - 1) * 2
		if len(sp) == 1 {
			noSplit00 = true
		}
		s = strings.Join(sp, "")

		// Split by 11
		sp = strings.Split(s, "11")
		removed += (len(sp) - 1) * 2
		if len(sp) == 1 {
			noSplit11 = true
		}
		s = strings.Join(sp, "")


		if noSplit00 && noSplit11 {
			break
		}
	}
	fmt.Println(removed)
}