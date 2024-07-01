package main

import (
	"fmt"
	"strconv"
)

func main() {
	n := getNextString()
	sum := 0
	for _, a := range n {
		digit, _ := strconv.Atoi(string(a))
		sum += digit
	}

	if sum%9 == 0 {
		fmt.Print("Yes")
	} else {
		fmt.Print("No")
	}
}


func getNextString() string {
	scanner.Scan()
	return scanner.Text()
}

var (
	scanner = getScanner(os.Stdin)
)