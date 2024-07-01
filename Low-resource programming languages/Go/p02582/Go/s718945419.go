package main

import "fmt"

func main() {
	var weather string
	var i int
	fmt.Scan(&weather)
	for _, c := range weather {
		if c == 'R' {
			i++
		}
	}
	fmt.Printf("%d", i)
}