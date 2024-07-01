package main

import (
	"fmt"
	"os"
//	"strconv"
	"text/scanner"
)

var sin scanner.Scanner
var ans int

func scan() string {
	tok := sin.Scan()
	if tok == scanner.EOF {
		return ""
	}
	return sin.TokenText()
}

func main() {
	sin.Init(os.Stdin)
	b := scan()

	if b == "A"{
		fmt.Printf("T")
}

if b == "C"{
	fmt.Printf("G")
}

if b == "G"{
	fmt.Printf("C")
}

if b == "T"{
	fmt.Printf("A")
}
	fmt.Printf("\n")


}


