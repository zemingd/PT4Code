package main

import (
	"bufio"
	"os"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)
var w = []string{"dream", "dreamer", "erase", "eraser"}

func main() {
	sc.Split(bufio.ScanWords)
	s := scans()

	if check(s) {
		os.Stdout.WriteString("YES")
		return
	}
	os.Stdout.WriteString("NO")
}

func scans() string {
	sc.Scan()
	return sc.Text()
}

func check(s string) bool {
	var b bool
	for _, v := range w {
		if v == s {
			return true
		}
		if strings.HasPrefix(s, v) {
          b = (b || check(s[len(v):]))
		}
	}
	return b
}
