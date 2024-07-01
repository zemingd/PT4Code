package main

import (
	"fmt"
	"os"
)

var (
	a = []rune{
		'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
	}
	s string
)

func main() {
	fmt.Scan(&s)
	for _, v := range s {
		if v == a[0] {
			if len(a) == 1 {
				fmt.Println("None")
				os.Exit(0)
			}
			a = a[1:]
		}
	}

	fmt.Printf("%c\n", a[0])
}
