package main

import "fmt"
import "strings"

func main() {
	var s string
	var out string

	fmt.Scanf("%s", &s)
	out = strings.Replace(s, "?", "D", -1)

	fmt.Println(out)
}
