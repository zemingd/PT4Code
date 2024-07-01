package main

import (
	"fmt"
	"strings"
)

func main() {
	var num int
	fmt.Scanf("%d", &num)

	var str string
	fmt.Scanf("%s", &str)

	fmt.Println(calc(num, str))
}

func calc(num int, s string) int {
	ret := strings.Count(s, "R") * strings.Count(s, "G") * strings.Count(s, "B")

	for i := 0; i < num-2; i++ {
		for j := i + 1; j < num-1; j++ {
			var k = j + j - i
			if k < num {
				if s[i] != s[j] && s[j] != s[k] && s[i] != s[k] {
					ret--
				}
			}
		}
	}

	return ret
}
