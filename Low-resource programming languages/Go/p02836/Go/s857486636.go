package main

import (
	"fmt"
	"strings"
)

func main() {
	var str string
	fmt.Scanln(&str)
	if len(str) == strings.Count(str, str[:1]) {
		fmt.Println(0)
	}
	count := 0
	m := len(str) / 2
	switch len(str) % 2 {
	case 1:
		fmt.Println("case1")
		left := str[:m]
		right := Reverse(str[m+1:])
		if strings.Compare(left, right) == 0 {
			fmt.Println(0)
			fmt.Println(left, right)
		} else {
			j := 0
			for i := 0; i < len(left); i++ {
				if left[i] == right[j] {
					j++
					continue
				}
				count++
				j++
			}
			fmt.Println(count)
			return
		}
	case 0:
		fmt.Println("case2")
		left := str[:m]
		right := Reverse(str[m:])
		if strings.Compare(left, right) == 0 {
			fmt.Println(0)
			fmt.Println(left, right)
		} else {
			j := 0
			for i := 0; i < len(left); i++ {
				if left[i] == right[j] {
					j++
					continue
				}
				count++
				j++
			}
			fmt.Println(count)
			return
		}
	}
}

func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}
