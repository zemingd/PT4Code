package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, math.MaxInt64)
}

func readString() string {
	sc.Scan()
	return sc.Text()
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

func SortReverseString(s string) string {
	r := []rune(s)
	sort.Sort(sort.Reverse(sortRunes(r)))
	return string(r)
}

func main() {
	s := readString()
	t := readString()
	sd := SortString(s)
	td := SortReverseString(t)

	for i := 0; i < len(sd); i++ {
		switch {
		case sd[i] < td[i]:
			fmt.Println("Yes")
			os.Exit(0)
		case sd[i] > td[i]:
			fmt.Println("No")
			os.Exit(0)
		case sd[i] == td[i]:
			continue
		}
	}
	if len(sd) < len(td) {
		fmt.Println("Yes")
		os.Exit(0)
	}
	fmt.Println("No")
}
