package main

import "fmt"

func main() {
	var s []byte
	fmt.Scan(&s)


	for i := 1;i < len(s);i++ {
		if s[i] == s[i-1] {
			fmt.Println("Bad")
			return
		}
		
		
	}

	fmt.Println("Good")
}
