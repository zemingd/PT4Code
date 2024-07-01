package main

import (
	"fmt"
	"strconv"
)

func main() {
	//s := "1817181712114"
	var s string
	fmt.Scanf("%s", &s)

	count := 0
	i, j := 0, 1

	for i < len(s) {
		j = i + 1
		for j < len(s)+1 {
			n, _ := strconv.Atoi(s[i:j])
			if n%2019 == 0 {
				count++
				i = j - 2
				break
			}
			j++
		}
		i++
	}

	fmt.Printf("%d\n", count)
}
