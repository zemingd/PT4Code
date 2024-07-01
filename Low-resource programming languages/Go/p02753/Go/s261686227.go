package main

import (
	"fmt"
)

func stdinput() string {
	var st string
	fmt.Scan(&st)
	return st
}
func main() {
	s := stdinput()
	stateb := false
	statea := false
	for _, val := range s {
		if string(val) == "B" {
			stateb = true
		} else if string(val) == "A" {
			statea = true
		} else {
			statea = false
			stateb = false
		}
	}
	if statea && stateb {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}