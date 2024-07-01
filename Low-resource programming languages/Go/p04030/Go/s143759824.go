package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)
	lens := len(s)

	out := ""
	for i := 0; i < lens; i++ {
		switch char := s[i : i+1]; char {
		case "0":
			out += "0"
		case "1":
			out += "1"
		case "B":
			if len(out) != 0 {
				out = out[:len(out)-1]
			}
		}
	}

	fmt.Printf("%s\n", out)
}
