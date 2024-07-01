package main

import "fmt"

func main() {
	var str string
	fmt.Scan(&str)

	// create map without overlapping alphabets
	m := make(map[string]int, len(str))
	for _, s := range str {
		m[string(s)] = 1
	}

	// logic
	for _, s := range "abcdefghijklmnopqrstuvwxyz" {
		_, ok := m[string(s)]
		if !ok {
			fmt.Println(string(s))
			return
		}
	}
	fmt.Println("None")

	return
}
