package main

import (
	"fmt"
)

func Palindrome(s string)bool {
    judge := true
    for i := 0; i < len(s) / 2; i++ {
      if s[i] != s[len(s)-1-i] {
        judge = false
      }
    }
  	return judge
}

func main() {
	var s string
  	fmt.Scan(&s)
  	
    if Palindrome(s) && Palindrome(s[:(len(s)-1)/2]) && Palindrome(s[(len(s)-1+3)/2:]) {
      fmt.Println("Yes")
      return
    }
    fmt.Println("No")
}