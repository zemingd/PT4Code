package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func newScanner() *bufio.Scanner {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	return scanner
}

var sc = newScanner()

func scanInt() int {
	sc.Scan()
	v, _ := strconv.Atoi(sc.Text())
	return v
}

func scanInts(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = scanInt()
	}
	return a
}

func scanString() string {
	if sc.Scan() {
		return sc.Text()
	}
	panic(sc.Err())
}

func main() {
	n := scanInt()
	answer := countAnagram(n)
	fmt.Println(answer)
}

func debug(a ...interface{}) {
	// fmt.Println(a...)
}

func countAnagram(n int) int {
	strList := make([]string, n)
	for i := 0; i < n; i++ {
		s := scanString()
		strList[i] = SortString(s)
	}
	sort.Strings(strList)
	count := 0
	for i := 0; i < n-1; {
		j := i + 1
		for ; j < n; j++ {
			debug(i, j)
			if strList[i] != strList[j] {
				break
			}
		}
		c := j - i
		count += c * (c - 1) / 2
		i = j
	}
	return count
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

func sameMap(m0, m1 map[byte]int) bool {

	for k := range m0 {
		v, ok := m1[k]
		if !ok {
			return false
		}
		if v != m0[k] {
			return false
		}
	}

	for k := range m1 {
		_, ok := m0[k]
		if !ok {
			return false
		}
	}
	return true
}
