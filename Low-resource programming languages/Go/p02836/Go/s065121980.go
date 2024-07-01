package main

import (
	"fmt"
	"strings"
)

func main() {
	var str string
	fmt.Scanln(&str)
	if len(str) == strings.Count(str, str[:1]) {
		//fmt.Println("case0")
		fmt.Println(0)
		return
	}
	if len(str) == 1 {
		//fmt.Println("case1")
		fmt.Println(0)
		return
	}
	if len(str) == 2 {
		if len(str) == strings.Compare(str[:1], Reverse(str[1:2])) {
			//fmt.Println("case2")
			fmt.Println(0)
		} else {
			//fmt.Println("case3")
			fmt.Println(1)
			return
		}
	}
	count := 0
	m := len(str) / 2
	switch len(str) % 2 {
	case 1:
		//fmt.Println("case4")
		left := str[:m]
		right := Reverse(str[m+1:])
		if strings.Compare(left, right) == 0 {
			fmt.Println(0)
		} else {
			j := 0
			for i := 0; i < len(left); i++ {
				if string(left[i]) == string(right[j]) {
					j++
					continue
				}
				//fmt.Println(left[i], right[j])
				count++
				j++
			}
			fmt.Println(count)
			return
		}
	case 0:
		//fmt.Println("case5")
		left := str[:m]
		right := Reverse(str[m:])
		if strings.Compare(left, right) == 0 {
			fmt.Println(0)
		} else {
			j := 0
			for i := 0; i < len(left); i++ {
				if string(left[i]) == string(right[j]) {
					j++
					continue
				}
				//fmt.Println(string(left[i]), string(right[j]))
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
