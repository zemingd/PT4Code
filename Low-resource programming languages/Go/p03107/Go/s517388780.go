package main

import "fmt"

func main() {
	var s string
	var a, b int
	fmt.Scan(&s)

	for i:=0; i<len(s); i++ {
		if s[i] == 48 {
			a++
		} else {
			b++
		}
	}

	if a > b {
		fmt.Println(b*2)
	} else {
		fmt.Println(a*2)
	}

}