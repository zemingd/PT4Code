package main

import (
	"fmt"
	"strings"
)

func main() {
	var wk string
	fmt.Scan(&wk)
	var res = abc049c(wk)
	fmt.Println(res)

}

func abc049c(wk string) string {
	var res = ""

	wk = Reverse(wk)
	wk = strings.Replace(wk, "resare", "", -1)
	wk = strings.Replace(wk, "esare", "", -1)
	wk = strings.Replace(wk, "remaerd", "", -1)
	wk = strings.Replace(wk, "maerd", "", -1)

	if len(wk) == 0 {
		res = "YES"
	} else {
		res = "NO"
	}
	return res
}

//Reverse stringreverse
func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)

}
