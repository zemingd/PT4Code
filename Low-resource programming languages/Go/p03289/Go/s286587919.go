package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	
	if s[0] != 'A' {
		fmt.Println("WA")
		return
	}

	var cnt int
	for i, c := range s {
		if i > 1 && c == 'C' {
			cnt++
		}
		if cnt > 1 {
			fmt.Println("WA")
			return
		}

		if i+1 == len(s) && c == 'C' {
			fmt.Println("WA")
			return
		}
	}
	
	cnt = 0
	for _, c := range s {
		if 'A' <= c && c <= 'Z' {
			cnt++
		}
	}
	
	if cnt > 2 {
		fmt.Println("WA")
		return
	}

	fmt.Println("AC")
}
