package main

import (
	"fmt"
)

func main() {
	l := []string{"Sunny", "Cloudy", "Rainy"}
	var a string
	fmt.Scan(&a)
	for i, _ := range l {
		if a == l[i] {
			if i == len(l)-1 {
				fmt.Println(l[0])
			} else {
				fmt.Println(l[i+1])
			}
		}
	}
}
