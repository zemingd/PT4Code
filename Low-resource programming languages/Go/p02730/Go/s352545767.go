package main

import "fmt"

func isOK(s string) bool {
	ok := true
	for i := 0; i < len(s)/2; i++ {
		if s[i] != s[len(s)-1-i] {
			ok = false
			break
		}
	}
	return ok
}

func main() {
	var s string
	fmt.Scan(&s)
	N := len(s)
	if isOK(s) && isOK(s[:(N-1)/2]) && isOK(s[N/2+1:]) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
