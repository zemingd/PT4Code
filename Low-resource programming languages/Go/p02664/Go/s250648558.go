package main

import (
	"fmt"
	"strings"
)

func main() {
	var t string
	fmt.Scanf("%s", &t)
	answer := pdQuotient(t)
	fmt.Println(answer)
}

func pdQuotient(t string) string {
	t = strings.ReplaceAll(t, "?", "D")
	return t
}