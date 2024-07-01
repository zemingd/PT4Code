package main

import (
	"fmt"
	"regexp"
)

func main() {
	var input string
	fmt.Scanf("%s", &input)
	r := regexp.MustCompile(`([0-1])([0-1])([0-1])`)
	results := r.FindAllStringSubmatch(input, -1)
	counter := 0
	for i, res := range results[0] {
		if i != 0 {
			if res == "1" {
				counter += 1
			}
		}
	}
	fmt.Printf("%d\n", counter)
}