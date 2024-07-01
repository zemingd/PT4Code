package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	sl:= split(s)

	n := len(sl)
	c := (n-1)/2
	abc := strings.Join(sl[0:c],"")
	d := (n+3)/2
	def := strings.Join(sl[d-1:n],"")
	if abc == Reverse(abc) {
		if abc== Reverse(def) {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}

func split(s string) []string {
	ret := make([]string, len([]rune(s)))
	for i, v := range []rune(s) {
		ret[i] = string(v)
	}
	return ret
}

func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
