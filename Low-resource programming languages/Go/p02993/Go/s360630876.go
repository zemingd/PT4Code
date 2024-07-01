package main

import "fmt"

func main() {
	var s []byte
	fmt.Scan(&s)


	m :=make(map[string]int, len(s))
	for i := 0;i < len(s);i++ {
		m[string(s[i])]++
		if m[string(s[i])] > 2 {
			fmt.Println("Bad")
			return
		}
	}

	fmt.Println("Good")
}
