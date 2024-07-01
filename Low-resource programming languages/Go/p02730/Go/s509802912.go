package main

import (
    "fmt"
)

func main() {
    var s string
	fmt.Scan(&s)
	if !isPalindrome(s){
		fmt.Println("No")
		return
	}
	if !isPalindrome(s[ : (len(s)-1)/2 ]){
		fmt.Println("No")
		return
	}
	if !isPalindrome(s[ ((len(s)+3)/2)-1 : ]){
		fmt.Println("No")
		return
	}
	fmt.Println("Yes")
	return
}

func reverse(s string) string {
    rs := []rune(s)
    for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
        rs[i], rs[j] = rs[j], rs[i]
    }
    return string(rs)
}
func isPalindrome(s string) bool {
	if s == reverse(s){
		return true
	}else{
		return false
	}
}