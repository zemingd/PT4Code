package main

import "fmt"

func main() {
	var i1 string
	m := make(map[string]string)

	m["A"] = "T"
	m["G"] = "C"
	m["T"] = "A"
	m["C"] = "G"

	fmt.Scan(&i1)

	fmt.Print(m[i1])
}