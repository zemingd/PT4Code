package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var protoS string
var t string

func main() {
	r := bufio.NewReader(os.Stdin)
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()

	fmt.Fscan(r, &protoS, &t)

	index := -1
	for i := len(protoS) - len(t); i >= 0; i-- {
		if enableReplace(i) {
			index = i
			break
		}
	}

	if index == -1 {
		fmt.Fprintln(w, "UNRESTORABLE")
		return
	}

	var s string
	if index != 0 {
		s = protoS[:index]
	}
	s += t
	if index+len(t) != len(protoS)-1 {
		s += protoS[index+len(t):]
	}
	s = strings.ReplaceAll(s, "?", "a")
	fmt.Fprintln(w, s)
}

func enableReplace(startIndex int) bool {
	if startIndex+len(t) > len(protoS) {
		return false
	}

	for i := 0; i < len(t); i++ {
		if protoS[startIndex+i] == '?' {
			continue
		}
		if protoS[startIndex+i] != t[i] {
			return false
		}
	}

	return true
}
