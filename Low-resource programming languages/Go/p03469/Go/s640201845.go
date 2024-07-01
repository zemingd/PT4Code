package main

import (
	"fmt"
)

func replaceAtIndex(in string, r rune, i int) string {
	out := []rune(in)
	out[i] = r
	return string(out)
}

func main() {
	var date string
	fmt.Scanf("%s",&date)
	date = replaceAtIndex(date,'8',3)
	fmt.Println(date)
}
