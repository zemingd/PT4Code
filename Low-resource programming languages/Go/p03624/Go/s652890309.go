package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	
	for i := 'a'; i <= 'z'; i++ {
		has := false
		for j := 0; j < len(s); j++ {
        	if string(i) == string(s[j]) {
				has = true
			}
		
		}
		if !has {
        	fmt.Println(string(i))
        	return
		}
	}
	fmt.Println("None")
}