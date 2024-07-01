package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	var input string
	input = nextLine()
	var weather string
	if input == "Sunny" {
		weather = "Cloudy"
	} else if input == "Cloudy" {
		weather = "Rainy"
	} else if input == "Rainy" {
		weather = "Sunny"
	}
	fmt.Print(weather)
}
