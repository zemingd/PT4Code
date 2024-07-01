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
	var S string
	fmt.Scan(&S)
	var N []int = make([]int, len(S))

	for i := 0; i < 2; i++ {
		cnt := 0
		for j, s := range S {
			if string([]rune{s}) == "R" {
				cnt++
			} else {
				N[j] += cnt / 2
				N[j-1] += (cnt + 1) / 2
				cnt = 0
			}
		}
		N = reverseInts(N)
		S = Reverse(S)
		buf := make([]byte, 0)
		for _, s := range S {
			if string([]rune{s}) == "L" {
				buf = append(buf, "R"...)
			} else {
				buf = append(buf, "L"...)
			}
		}
		S = string(buf)
	}

	for _, i := range N {
		fmt.Print(i, " ")
	}
}
