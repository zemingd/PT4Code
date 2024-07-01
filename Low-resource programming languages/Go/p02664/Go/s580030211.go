package main

import (
	"fmt"
	"strings"
)

func main() {
	// Code for B - Postdocs
	var S string
	fmt.Scanf("%s", &S)

	fmt.Printf(strings.Replace(S, "?", "D", -1))
}
