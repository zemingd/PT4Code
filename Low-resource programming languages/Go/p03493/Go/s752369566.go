package main

import "fmt"

func main(){
	var s string
	fmt.Scan(&s)

	fmt.Println(one(s))
}

func one(input string) int {

	var i int
	for n := range input {

		if input[n] == '1'{
			i++
		}
	}
	return i
}