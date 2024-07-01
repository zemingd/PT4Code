package main

import (
	"fmt"
)

func test(s string) bool {
	//string型は、中身がbyte配列
	//文字列を文字単位で扱うには、rune型を使う
	//日本語の時は注意‼︎
	n := len(s)
	for i := 0; i < n/2; i++ {
		if s[i] != s[n-i-1] {
			return false
		}
	}
	return true
}

func main() {
	var s string
	fmt.Scan(&s)
	n := len(s)

	if test(s) && test(s[0:((n-1)/2)]) && test(s[(n+3)/2-1:n]) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
