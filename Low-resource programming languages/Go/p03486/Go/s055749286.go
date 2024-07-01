package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strings"
)

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	var s, t string
	if sc.Scan() {
		s = sc.Text()
	}
	if sc.Scan() {
		t = sc.Text()
	}

	sOdr := order(s)
	tOdr := reverse(order(t))

	for pos, sOdr_i := range sOdr {
		sNum := findNum(sOdr_i)

		for _, tOdr_j := range tOdr {
			tNum := findNum(tOdr_j)

			if sNum < tNum {
				fmt.Println("Yes")
				return
			}

			if pos == len(tOdr)-1 {
				fmt.Println("No")
				return
			}
		}
	}

	fmt.Println("No")
	return
}

func findNum(s rune) int {
	a := "abcdefghijklmopqrstwxyz"

	for pos, i := range a {
		if s == i {
			return pos
		}
	}

	return -1
}

func order(str string) string {
	rs := []string{}
	for _, r := range str {
		rs = append(rs, strings.ToLower(string(r)))
	}
	sort.Strings(rs)
	return strings.Join(rs, "")
}

func reverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}
