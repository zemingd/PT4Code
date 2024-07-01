package main

import "fmt"

func main() {
	//var N int
	var N int
	var count int
	var S string
	var str string

	fmt.Scan(&N)
	fmt.Scan(&S)
	for k, r := range S {
		if k == 0 {
			str = string(r)

			continue
		}
		if str != string(r) {
			str = string(r)
			count++
		}
	}
	fmt.Println(count + 1)
}
