package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var s, t string
	if sc.Scan() {
		s = sc.Text()
	}
	if sc.Scan() {
		t = sc.Text()
	}
	maxMatch := 0
	for i := 0; i <= len(s)-len(t); i++ {
		test := s[i : i+len(t)]
		match := 0
		for i, _ := range make([]int, len(t)) {
			if test[i] == t[i] {
				match++
			}
		}
		if match > maxMatch {
			maxMatch = match
		}
	}
	fmt.Printf(strconv.Itoa(len(t) - maxMatch))
}
