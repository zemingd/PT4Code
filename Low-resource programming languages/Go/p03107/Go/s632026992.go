package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	ar := []rune{}
	result := 0
	for _, v := range s {
		if len(ar) > 0 && ar[len(ar)-1] != v {
			ar = ar[:len(ar)-1]
			result += 2
		} else {
			ar = append(ar, v)
		}
	}
	fmt.Println(result)
}