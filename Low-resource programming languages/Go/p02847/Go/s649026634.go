package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc *bufio.Scanner = func() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}()

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	s := nextString()
	var out int
	switch s {
	case "SUN":
		out = 7
	case "MON":
		out = 6
	case "TUE":
		out = 5
	case "WED":
		out = 4
	case "THU":
		out = 3
	case "FRI":
		out = 2
	case "SAT":
		out = 1
	}
	fmt.Println(out)
}
