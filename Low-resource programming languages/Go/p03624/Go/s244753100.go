package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	n := 26
	f := make([]bool, n)
	for i := 0; i < n; i++ {
		f[i] = true
	}

	for _, c := range s {
		f[c - 'a'] = false
	}

	none := true
	for i, t := range f {
		if t {
			fmt.Printf("%c\n", 'a' + i)
			none = false
			break
		}
	}

	if none {
		fmt.Println("None")
	}
}
