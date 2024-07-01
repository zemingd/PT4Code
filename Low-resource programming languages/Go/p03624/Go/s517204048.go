package main

import (
	"fmt"
	"os"
)

var (
	s string
	a = make([]bool, 26)
)

func main() {
	fmt.Scan(&s)

	for _, v := range s {
		a[v-97] = true
	}

	for i, v := range a {
		if !v {
			fmt.Printf("%c\n", i+97)
			os.Exit(0)
		}
	}

	fmt.Println("None")
}
