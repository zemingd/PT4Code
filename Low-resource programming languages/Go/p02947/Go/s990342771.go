package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type Comparable interface {
	LessThan(Comparable) bool
}

type ComparableSlice []Comparable

func (c ComparableSlice) Len() int {
	return len(c)
}

func (c ComparableSlice) Less(i, j int) bool {
	return c[i].LessThan(c[j])
}

func (c ComparableSlice) Swap(i, j int) {
	c[i], c[j] = c[j], c[i]
}

func SortComparables(elts []Comparable) {
	sort.Sort(ComparableSlice(elts))
}

//////////////////////////////////////////////////////////////////////
// Let's try using this:

type ComparableRune rune

func (r1 ComparableRune) LessThan(o Comparable) bool {
	return r1 < o.(ComparableRune)
}

// main is ...
func main() {
	var n int

	var sc = bufio.NewScanner(os.Stdin)
	if sc.Scan() {
		n, _ = strconv.Atoi(sc.Text())
	}
	var list = make([]string, n)
	for i := 0; i < n; i++ {
		if sc.Scan() {
			list[i] = sc.Text()
		}
	}

	for i, s := range list {
		comparables := make(ComparableSlice, len(s))
		for i, v := range s {
			comparables[i] = ComparableRune(v)
		}

		SortComparables(comparables)

		sortedRunes := make([]rune, len(s))
		for i, v := range comparables {
			sortedRunes[i] = rune(v.(ComparableRune))
		}
		list[i] = string(sortedRunes)
	}

	sort.Sort(sort.StringSlice(list))
	ret := 0
	for i := 0; i < len(list)-1; i++ {
		for j := i + 1; j < len(list); j++ {
			if list[i] == list[j] {
				ret++
			}
		}

	}
	fmt.Println(ret)
}

