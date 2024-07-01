package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var t string
	s := wordScanner(100001)
	scanStrings(s, &t)

	ans := 0
	for i := 0; len(t) > i+1; {
		if d := t[i : i+2]; d == "01" || d == "10" {
			ans += 2
			if len(t) > i+1 {
				t = t[:i] + t[i+2:]
				if i > 0 {
					i--
				}
			} else {
				break
			}
		} else {
			i++
		}
	}

	fmt.Println(ans)
}

func wordScanner(n int) *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	b := make([]byte, n)
	s.Buffer(b, n)
	return s
}

func scanStrings(s *bufio.Scanner, vals ...*string) {
	for i := range vals {
		s.Scan()
		*vals[i] = s.Text()
	}
}
