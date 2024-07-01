package main

import (
	"fmt"
	"strings"
)

// go run ./main.go < in

func main() {
	var inputs string
	fmt.Scan(&inputs)

	var format = [4]string{
		"eraser",
		"erase",
		"dreamer",
		"dream",
	}

	for _, v := range format {
		inputs = strings.Replace(inputs, v, "", -1)
	}

	if inputs == "" {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}

}