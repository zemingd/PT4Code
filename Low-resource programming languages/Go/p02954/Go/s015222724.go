package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	s := strings.Split(nextLine(), "")
	l := len(s)
	var x int
	if l%2 == 0 {
		x = l
	} else {
		x = l - 1
	}
	var input = make([]int, l)
	for i := range input {
		input[i] = 1
	}
	// fmt.Println(input, output)
	for i := 0; i < x; i++ {
		var output = make([]int, l)
		for j := 0; j < l; j++ {
			if s[j] == "R" {
				output[j+1] += input[j]
			} else {
				output[j-1] += input[j]
			}
		}
		input = output
		// fmt.Println(i, output)
	}
	for k := 0; k < l-1; k++ {
		fmt.Printf("%d ", input[k])
	}
	fmt.Println(input[l-1])
	// fmt.Println(input)
}