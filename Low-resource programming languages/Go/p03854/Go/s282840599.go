package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var (
	sc = bufio.NewScanner(os.Stdin)
	ts = []string{"dream", "dreamer", "erase", "eraser"}
	s  = ""
)

func main() {
	s = nextWord()

	if rec(0) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}

func rec(i int) bool {
	if len(s) == 0 {
		return false
	}
	if i == len(s) {
		return true
	}
	for _, t := range ts {
		if strings.HasPrefix(s[i:], t) {
			if rec(i + len(t)) {
				return true
			}
		}
	}
	return false
}

func nextWord() string {
	sc.Scan()
	return sc.Text()
}

func pnc(err error) {
	if err != nil {
		panic(err)
	}
}
