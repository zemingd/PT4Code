package main

import (
	"fmt"
	"unicode"
)

//先頭文字A判定
func ini(s string)bool {
	if s[0] == 'A' {
		return true
	} else {
		return false
	}
}

//C判定
func upc(s string)int {
	for i := 2; i < len(s)-1; i++{
		if s[i] == 'C' {
			return i
		}
	}
	return -1
}

//小文字判定
func isupper(s string, num int) bool {
	for i := range s {
      if i == 0 || i == num {
      	continue
      }
		target := rune(s[i])
		if unicode.IsUpper(target) {
          //fmt.Println(string(s[i]))
			return false
		}
	}
	return true
}

func main() {
	var s string
	fmt.Scan(&s)
	
	//fmt.Println(ini(s))
	//fmt.Println(upc(s) != -1)
	//fmt.Println(isupper(s,upc(s)))
	//fmt.Println(upc(s))
	if ini(s) && upc(s) != -1 && isupper(s,upc(s)) {
		fmt.Println("AC")
	} else {
		fmt.Println("WA")
	}
}