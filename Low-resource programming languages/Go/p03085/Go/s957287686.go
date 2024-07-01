package main

import "fmt"

func main() {
	var b,result string
	fmt.Scanf("%,b)
	switch b {
	case "A":
		result = "T"
	case "T":
		result = "A"
	case "C":
		result = "G"
	case "G":
		result = "C"
	}
	fmt.Println(result)
}
