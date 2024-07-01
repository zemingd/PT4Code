package main

import (
	"fmt"
	"os"
	"sort"
	"strings"
)

var (
	a = []string{
		"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
	}
	s string
)

func main() {
	fmt.Scan(&s)
	x := strings.Split(s, "")
	sort.Strings(x)

	for _, v := range x {
		if v == a[0] {
			if len(a) == 1 {
				fmt.Println("None")
				os.Exit(0)
			}
			a = a[1:]
		}
	}

	fmt.Printf("%s\n", a[0])
}
