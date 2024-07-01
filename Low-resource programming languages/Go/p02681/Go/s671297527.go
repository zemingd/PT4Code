package main

import (
	"fmt"
	"strings"
)

func main() {
	var S, T string
	fmt.Scan(&S, &T)

	res := "No"
	if (len(S) + 1 == len(T)) && strings.Contains(T,S) {
		res = "Yes"
	}

	fmt.Println(res)
}
