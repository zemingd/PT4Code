package main

import "fmt"

func main() {
	var in string
	var i int
	fmt.Scan(&in)
	if in[0] == '1' {
		i++
	}
	if in[1] == '1' {
		i++
	}
	if in[2] == '1' {
		i++
	}
	fmt.Println(i)
}
