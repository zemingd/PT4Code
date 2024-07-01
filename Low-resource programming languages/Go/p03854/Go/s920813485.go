package main

import "fmt"
import "strings"

func isOK(s string) bool {
	if s == "" {
		return true
	} else {
		a := strings.HasPrefix(s, "dreamer") && isOK(s[7:])
		b := strings.HasPrefix(s, "dream") && isOK(s[5:])
		c := strings.HasPrefix(s, "eraser") && isOK(s[6:])
		d := strings.HasPrefix(s, "erase") && isOK(s[5:])
		return a || b || c || d
	}
}

func main() {
	var s string
	fmt.Scan(&s)
	if isOK(s) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}

}
