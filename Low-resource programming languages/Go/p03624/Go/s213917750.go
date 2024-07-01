package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	ar := make([]bool, 26)
	for _, v := range s {
		ar[v-'a'] = true
	}
	for i, v := range ar {
		if !v {
			fmt.Println(string('a' + i))
			return
		}
	}
	fmt.Println("None")
}
