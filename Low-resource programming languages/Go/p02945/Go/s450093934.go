package main

import (
	"fmt"
)

func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

func reverseInts(s []int) []int {
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		s[i], s[j] = s[j], s[i]
	}
	return s

}

func main() {
	var A, B int
	fmt.Scanf("%v %v", &A, &B)

	sum := A + B
	minus := A - B
	multi := A * B

	if sum >= minus && sum >= multi {
		fmt.Println(sum)
	} else if minus >= sum && minus >= multi {
		fmt.Println(minus)
	} else if multi >= sum && multi >= minus {
		fmt.Println(multi)
	}

}
