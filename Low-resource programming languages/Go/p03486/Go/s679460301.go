package main

import (
	"fmt"
)

func Sort(s string) string {
	runes := []rune(s)
	for i := 0; i < len(runes); i++ {
		min := runes[i]
		minIndex := i
		for j := i+1; j < len(runes); j++ {
			if min > runes[j] {
				min = runes[j]
				minIndex = j
			}
		}
		tmp := runes[i]
		runes[i] = min
		runes[minIndex] = tmp
	}
	return string(runes)
}

func Reverse(t string) string {
	runes := []rune(t)
	for i := 0; i < len(runes); i++ {
		max := runes[i]
		maxIndex := i
		for j := i+1; j < len(runes); j++ {
			if max < runes[j] {
				max = runes[j]
				maxIndex = j
			}
			
		}
		tmp := runes[i]
		runes[i] = max
		runes[maxIndex] = tmp
	}
	return string(runes)
}

func main() {
	var s,t string
	fmt.Scan(&s,&t)
	
	if Sort(s) < Reverse(t) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
	
}