package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	var count, countMax int

	for _, char := range s{
		if string(char)  == "A" || string(char) == "T" || string(char)  == "C" || string(char)  =="G"{
			count ++
		} else {
			if count > countMax {
				countMax = count
			}
			count = 0
		}
	}	
	fmt.Println(countMax)	
}