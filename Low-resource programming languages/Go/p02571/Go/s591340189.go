package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	var max_match, temp_max_match int
	max_match = 0
	for i:=0; i <= len(s)-len(t); i++ {
		temp_max_match = 0
		for j:=0; j < len(t); j++ {
			if s[j+i] == t[j]{
				temp_max_match++
			}
		}
		if temp_max_match > max_match {
			max_match = temp_max_match
		}
	}
	fmt.Println(len(t)-max_match)
}
