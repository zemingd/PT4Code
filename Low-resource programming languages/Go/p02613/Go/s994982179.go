package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var c [4]int

func outResult() {
	fmt.Printf("AC x %s\n", strconv.Itoa(c[0]))
	fmt.Printf("WA x %s\n", strconv.Itoa(c[1]))
	fmt.Printf("TLE x %s\n", strconv.Itoa(c[2]))
	fmt.Printf("RE x %s\n", strconv.Itoa(c[3]))
}

func main() {

	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		switch scanner.Text() {
		case "AC":
			c[0]++
		case "WA":
			c[1]++
		case "TLE":
			c[2]++
		case "RE":
			c[3]++
		}

	}

	outResult()
}
