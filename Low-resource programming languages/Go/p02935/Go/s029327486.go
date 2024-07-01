package main

import (
	"fmt"
	"sort"
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

type sortRunes []rune

func (s sortRunes) Less(i, j int) bool {
	return s[i] < s[j]
}

func (s sortRunes) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

func (s sortRunes) Len() int {
	return len(s)
}

func SortString(s string) string {
	r := []rune(s)
	sort.Sort(sortRunes(r))
	return string(r)
}

func main() {
	var N int
	fmt.Scan(&N)

	var vi []float64 = make([]float64, N)

	for i := range vi {
		fmt.Scan(&vi[i])
	}

	sort.Float64s(vi)

	val := vi[0]

	for i, v := range vi {
		if i != 0 {
			val = (val + v) / 2
		}
	}
	fmt.Println(val)

}
