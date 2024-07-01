package main

import "fmt"
import "strings"

func main() {
	var s string
	a := 'a'
	fmt.Scan(&s)
	for i := 0; i < len(s); i++ {
		if strings.Compare(fmt.Sprintf("%c", s[i]), fmt.Sprintf("%c", a)) == 0 {
			if a == 'z' {
				fmt.Println("None")
				return
			}
			a++
			i = 0
		}
	}
	fmt.Printf("%c\n", a)
}
