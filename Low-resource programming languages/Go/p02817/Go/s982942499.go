package main

import (
	"fmt"
	"strings"
)

func main() {
	var s, t string
	fmt.Scanf("%s %s", &s, &t)
	result := strings.Join([]string{t, s}, "")
	fmt.Println(result)
}
