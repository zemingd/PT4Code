package main

import (
	"fmt"
	"regexp"
	"strings"
)

func main() {
	var s, t string

	r := regexp.MustCompile(`[a-z]*`)

	fmt.Scanf("%s", &s)
	fmt.Scanf("%s", &t)

	slen := len(s)
	tlen := len(t)

	if (r.MatchString(s)) && (r.MatchString(t)) &&
		(slen >= 1) && (slen <= 10) && (slen+1 == tlen) && (strings.HasPrefix(t, s)) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
