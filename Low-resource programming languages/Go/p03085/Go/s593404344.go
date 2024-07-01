package main

import "fmt"

func main() {
	var input string
	mapfunc := map[string]string{
		"A": "T",
		"G": "C",
		"T": "A",
		"C": "G",
	}
	for {
		fmt.Scan(&input)
		if input == "A" || input == "T" || input == "G" || input == "C" {
			fmt.Println(mapfunc[input])
		} else {
			fmt.Println("input only 'A''T''G''C'")
		}
	}
}