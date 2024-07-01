package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	
	fmt.Print(getStr(a, b))
}

func getStr(a, b int) string {
	var s string
	if a > b {
		tmp := string(b)
		for i := 1; i <= a; i++ {
			s += tmp
		} 
	} else {
		tmp := string(a)
		for i := 1; i <= b; i++ {
			s += tmp
		}
	}
	return s
}