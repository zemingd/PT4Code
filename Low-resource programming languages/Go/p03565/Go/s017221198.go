package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func ok(s, t string) bool {
	if len(s) != len(t) {
		return false
	}
	
	for i := 0; i < len(s); i++ {
		if s[i] != t[i] && s[i] != '?' {
			return false
		}
	}
	return true
}

func main() {
	var s, t string
	s = next()
	t = next()
	
	res := ""
	for i := 0; i + len(t) <= len(s); i++ {
		var ss = s[i:i+len(t)]
		if ok(ss, t) {
			res = s[:i] + ss + s[i+len(t):]
		}
	}
	if len(res) != 0 {
		fmt.Println(strings.Replace(res, "?", "a", -1))
	} else {
		fmt.Println("UNRESTORABLE")
	}
}