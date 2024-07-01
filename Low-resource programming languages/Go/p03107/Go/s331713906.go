package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextString() string {
	var s string
	if sc.Scan() {
		s = sc.Text()
	}
	return s
}

func middlePop(s string, count int) int {
	if len(s) < 2 {
		return count
	}
	for i := 0; i < len(s)-1; i++ {
		if s[i:i+1] != s[i+1:i+2] {
			count += 2
			var n string
			n += s[:i]
			n += s[i+2:]
			fmt.Println(n)
			return middlePop(n, count)
		}
	}
	return count
}

func main() {
	sc.Split(bufio.ScanWords)
	s := nextString()
	var count int
	fmt.Println(middlePop(s, count))
}
