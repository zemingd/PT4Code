package main

import "fmt"

func main() {
	var input string
	output := []string{}
	length := 0
	for {
		fmt.Scanf("%s", &input)
		length = len(output)
		if (input == "0") || (input == "1") {
			output = append(output, input)
			fmt.Println(output)
		} else if input == "B" {
			if len(output) == 1 {
				fmt.Println("")
			} else if length == 0 {
				fmt.Println(output)
			} else {
				output = output[:length-1]
				fmt.Println(output)
			}
		} else {

		}
	}
}
