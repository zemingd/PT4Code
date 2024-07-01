package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	s := []rune(getString())
	l := len(s)

	ans := "AC"
	flagC := false
L:
	for i, r := range s {
		switch {
		case i == 0:
			if r != 'A' {
				ans = "WA"
				break L
			}
		case i >= 2 && i <= l-2:
			if (!flagC) && (r == 'C') {
				flagC = true
				break
			} else if r < 'a' {
				ans = "WA"
				break L
			}
		default:
			if r < 'a' {
				ans = "WA"
				break L
			}
		}
	}
	if !flagC {
		ans = "WA"
	}

	fmt.Println(ans)
}

// -----------------------------------------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	// buf := 200001
	// sc.Buffer(make([]byte, buf), buf)
	sc.Split(bufio.ScanWords)
}

func getInt() int {
	i, err := strconv.Atoi(getString())
	if err != nil {
		panic(err)
	}
	return i
}

func getString() string {
	sc.Scan()
	s := sc.Text()
	return s
}
