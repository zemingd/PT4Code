package main

import (
	"fmt"
	"regexp"
)


func main() {
	var s string
	fmt.Scanf("%s", &s)
	san := `^RRR$`
	ni := `^SRR$`
	ni2 := `^RRS$`
	ichi := `^RSR$`
	ichi2 := `^SSR$`
	ichi3 := `^RSS$`

	if regexp.MustCompile(san).Match([]byte(s)) {
		fmt.Println(3)
		return
	} else if regexp.MustCompile(ni).Match([]byte(s)) ||
		regexp.MustCompile(ni2).Match([]byte(s)) {
		fmt.Println(2)
		return
	} else if regexp.MustCompile(ichi).Match([]byte(s)) ||
		regexp.MustCompile(ichi2).Match([]byte(s)) ||
		regexp.MustCompile(ichi3).Match([]byte(s)) {
		fmt.Println(1)
		return
	}
	fmt.Println(0)
}
