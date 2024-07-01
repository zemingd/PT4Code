package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	begin, end := -1, -1
	for i, r := range s {
		if r == 'A' && begin == -1 {
			begin = i
		}
		if r == 'Z' {
			end = i
		}
	}
	fmt.Println(end - begin + 1)
}
