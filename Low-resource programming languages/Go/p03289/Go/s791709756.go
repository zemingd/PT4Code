package main

import (
	"fmt"
	"strings"
)

func judgeA(a string) bool {
	if a[0] == 'A' {
		return true
	} else {
		return false
	}
}

func judgeC(a string) bool {
	counter := 0
	for i := 2; i < len(a)-1; i++ {
		if a[i] == 'C' {
			counter++
		}
	}
	if counter == 1 {
		return true
	} else {
		return false
	}
}

func main() {
	var s string
	fmt.Scan(&s)

	if judgeA(s) == false {
		fmt.Println("WA")
		return
	} else {
		if judgeC(s) == false {
			fmt.Println("WA")
			return
		} else {
			if strings.ContainsAny(s, "BDEFGHIJKLMNOPQRSTUVWXYZ") == true {
				fmt.Println("WA")
				return
			} else {
				fmt.Println("AC")
			}
		}
	}
}
