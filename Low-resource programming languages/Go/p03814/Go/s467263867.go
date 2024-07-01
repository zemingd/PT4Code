package main

import (
	"fmt"
)

func main() {
	s := ""
	fmt.Scan(&s)
	a := []byte("A")[0]
	z := []byte("Z")[0]

	i := 0
	for i = 0; i < len(s); i++ {
		if s[i] == a {
			break
		}
	}

	j := 0
	for j = len(s) - 1; j >= 0; j-- {
		if s[j] == z {
			break
		}
	}

	fmt.Println(j - i + 1)

}