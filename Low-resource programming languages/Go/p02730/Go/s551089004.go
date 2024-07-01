package main

import "fmt"

func IsPalindrome(s string) bool {
	r := make([]rune, len(s))
	for i, a := range s {
		r[len(s)-i-1] = a
	}

	return s == string(r)
}

func main() {

	var S string
	fmt.Scan(&S)
	N := len(S)

	S1 := S[:int((N-1)/2)]
	S2 := S[int((N+3)/2)-1:]

	ret := "No"
	if IsPalindrome(S) && IsPalindrome(S1) && IsPalindrome(S2) {
		ret = "Yes"
	}
	fmt.Println(ret)

}
