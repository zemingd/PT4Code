package main

import "fmt"

func main() {
	var s, a string
	fmt.Scan(&s)
	for i := 0; i < len(s); i++ {
		if s[i:i+1] == "0" {
			a += "0"
			// fmt.Println(a)
		} else if s[i:i+1] == "1" {
			a += "1"
			// fmt.Println(a)
		} else {
			sc := []rune(a)
			a = ""
			if len(sc) > 0{
				a += string(sc[:(len(sc) - 1)])
			}
			// fmt.Println(a)
		}
	}
	fmt.Println(a)
}