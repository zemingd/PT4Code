package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	var input string
	fmt.Scan(&input)

	output := 0
	last := ""
	for _, v := range input {
		if (last == string(v)) {
			last = string(v)
			continue
		}
		last = string(v)
		output++
	}
	fmt.Println(output)
}