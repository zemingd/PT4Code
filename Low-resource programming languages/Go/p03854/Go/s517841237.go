package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var (
	stdin = bufio.NewScanner(os.Stdin)
	t     = []string{"dream", "dreamer", "erase", "eraser"}
)

func main() {
	stdin.Scan()
	s := stdin.Text()
	s = strings.Replace(s, t[0], "D", -1)
	s = strings.Replace(s, t[2], "E", -1)
	s = strings.Replace(s, "Der", "", -1)
	s = strings.Replace(s, "Er", "", -1)
	s = strings.Replace(s, "D", "", -1)
	s = strings.Replace(s, "E", "", -1)
	var o = "NO"
	if s == "" {
		o = "YES"
	}
	fmt.Println(o)
}
