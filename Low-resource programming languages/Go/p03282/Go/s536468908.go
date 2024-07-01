package main

import (
	"fmt"
	"strconv"
)

const (
	DATES = 5000000000000000
)

func main() {
	var S string
	var K int

	fmt.Scan(&S)
	fmt.Scan(&K)

	for _,value := range S {
		if v,_ := strconv.Atoi(string(value));v != 1 {
			K = 10
			fmt.Println(string(value))
			break
		}
	}

}