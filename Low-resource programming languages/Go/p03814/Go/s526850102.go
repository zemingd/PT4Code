package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	var begin, end int
	var started bool
	for i, r := range s {
		if !started && r == 'A' {
			begin = i
			started = true
		}
		if started && r == 'Z' {
			end = i
		}
	}
	fmt.Println(end - begin + 1)
}