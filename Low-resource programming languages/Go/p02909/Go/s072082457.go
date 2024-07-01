package main

import (
	"fmt"
)

func main() {
	var s string
	w := []string{"Sunny", "Cloudy", "Rainy"}
	n := 0
	for i, v := range w {
		if v == s {
			n = i
		}
	}
	if n == 2 {
		fmt.Println(w[0])
	} else {
		fmt.Println(w[n+1])
	}
}
