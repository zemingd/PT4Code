package main

import "fmt"

func main() {
	var line string
	fmt.Scan(&line)
	count1, count2 := 0, 0
	for i, ss := range line {
		s := string(ss)
		if i % 2 == 0 && s == "0" {
			count1++
		} else if i % 2 == 1 && s == "1" {
			count1++
		}
	}

	for i, ss := range line {
		s := string(ss)
		if i % 2 == 0 && s == "1" {
			count2++
		} else if i % 2 == 1 && s == "0" {
			count2++
		}
	}

	if count1 > count2 {
		fmt.Println(count2)
	} else {
		fmt.Println(count1)
	}
}