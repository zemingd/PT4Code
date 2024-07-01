package main

import "fmt"

func main() {
	var n, c0, c1, c2, c3 int
	fmt.Scan(&n)
	s := scanStrings(n)
	for i := 0; i < n; i++ {
		if s[i] == "AC" {
			c0 = c0 + 1
		} else if s[i] == "WA" {
			c1 = c1 + 1
		} else if s[i] == "TLE" {
			c2 = c2 + 1
		} else if s[i] == "RE" {
			c3 = c3 + 1
		}
	}
	fmt.Println("AC x ", c0)
	fmt.Println("WA x ", c1)
	fmt.Println("TLE x ", c2)
	fmt.Printf("RE x %d", c3)
}

func scanStrings(len int) (strings []string) {
	var str string
	for i := 0; i < len; i++ {
		fmt.Scanf("%s", &str)
		strings = append(strings, str)
	}
	return
}
