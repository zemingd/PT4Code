package main
 
import (
	"fmt"
	"unicode/utf8"
)
 
func main() {
	var s string
	fmt.Scan(&s)
	l := utf8.RuneCountInString(s)
	s1 := s[0:(l - 1) / 2]
	s2 := s[(l + 2) / 2:l]
	if s1 == reverse(s1) && s2 == reverse(s2) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func reverse(s string) string {
    rs := []rune(s)
    for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
        rs[i], rs[j] = rs[j], rs[i]
    }
    return string(rs)
}