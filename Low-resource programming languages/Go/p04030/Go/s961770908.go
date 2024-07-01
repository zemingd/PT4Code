package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var s string
	fmt.Fscan(r, &s)

	var st Stack
	for i := 0; i < len(s); i++ {
		if s[i] == '0' {
			st.push("0")
		} else if s[i] == '1' {
			st.push("1")
		} else if s[i] == 'B' {
			st.pop()
		}
	}

	fmt.Println(strings.Join(st, ""))
}

// Stack ...
type Stack []string

// pop ...
func (s *Stack) empty() bool {
	return len(*s) == 0
}

// push ...
func (s *Stack) push(i string) {
	*s = append(*s, i)
}

// pop ...
func (s *Stack) pop() (string, bool) {
	if s.empty() {
		return "", false
	}
	index := len(*s) - 1
	res := (*s)[index]
	*s = (*s)[:index]
	return res, true
}
