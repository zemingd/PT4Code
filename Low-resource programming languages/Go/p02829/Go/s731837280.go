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
	a := nextLine()
	b := nextLine()
	if (a == "1" && b == "2") || (a == "2" && b == "1") {
		fmt.Println("3")
	} else if (a == "2" && b == "3") || (a == "3" && b == "2") {
		fmt.Println("1")
	} else {
		fmt.Println("2")
	}
}
