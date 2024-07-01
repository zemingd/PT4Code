package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type smaller []byte

func (s smaller) Len() int {
	return len(s)
}
func (s smaller) Less(i, j int) bool {
	return s[i] < s[j]
}
func (s smaller) Swap(i, j int) {
	s[i], s[j] = s[j], s[i]
}

type larger []byte

func (l larger) Len() int {
	return len(l)
}
func (l larger) Less(i, j int) bool {
	return l[i] > l[j]
}
func (l larger) Swap(i, j int) {
	l[i], l[j] = l[j], l[i]
}

func main() {
	sc.Split(bufio.ScanWords)

	s, t := next(), next()

	sRunes, tRunes := []byte(s), []byte(t)
	sort.Sort(smaller(sRunes))
	sort.Sort(larger(tRunes))

	if string(sRunes) < string(tRunes) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}