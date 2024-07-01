package main

import (
	"fmt"
	"strconv"
)

func main() {
	// Code for A - Still TBD
	var S string
	fmt.Scanf("%s", &S)

	yyyy, _ := strconv.Atoi(S[0:4])
	mm, _ := strconv.Atoi(S[5:7])
	if yyyy <= 2018 {
		fmt.Println("Heisei")
	} else if yyyy == 2019 && mm <= 4 {
		fmt.Println("Heisei")
	} else {
		fmt.Println("TBD")
	}
}
