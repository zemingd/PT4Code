package main

import "fmt"

func main() {
	var input string
	output := []string{}
	length := 0
	var strOutput string
	for {
		fmt.Scanf("%s", &input)
		length = len(output)
		if (input == "0") || (input == "1") {
			output = append(output, input)
			strOutput = joinString(output)
			fmt.Println(strOutput)
		} else if input == "B" {
			if len(output) == 1 {
				fmt.Println("")
			} else if length == 0 {
				fmt.Println("")
			} else {
				strOutput = joinString(output[:length-1])
				fmt.Println(strOutput)
			}
		} else {

		}
	}
}

func joinString(strSlice []string) string {
	var out string
	for i := 0; i < len(strSlice); i++ {
		out = out + strSlice[i]
	}
	return out
}
