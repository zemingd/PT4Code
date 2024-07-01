package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	var k int
	fmt.Scan(&s, &k)
	S := strings.Split(s, "")

	for i := 0; i < k; i++ {
		if S[i] != "1" {
			fmt.Println(S[i])
			break
		}
		if i == k-1 {
			fmt.Println(1)
		}
	}
}
