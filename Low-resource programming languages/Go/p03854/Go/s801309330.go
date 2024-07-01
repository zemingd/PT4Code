package main

import (
	"fmt"
	"strings"
)

//Reverse string reverse
func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
			runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func search(s string) bool {
	rs := Reverse(s)
	words := []string{"dream", "dreamer", "erase", "eraser"}
	for _, v := range words {
		rv := Reverse(v)
		rs = strings.Replace(rs, rv, "", -1)
	}

	return len(rs) == 0
}

func main() {
	var s, string
	
	fmt.Scan(&s)

	if search(s) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}