package main

import "fmt"

func main() {
	var line string
	fmt.Scan(&line)
	str := ""
	for i, j := range line {
		if i % 2 == 0 {
			str += string(j)
		}
	}
	fmt.Println(str)
}