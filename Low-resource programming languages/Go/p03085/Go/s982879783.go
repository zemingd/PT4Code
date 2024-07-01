package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	out := ""
	switch text := stdin.Text(); text {
	case "A":
		out = "T"
	case "C":
		out = "G"
	case "G":
		out = "C"
	case "T":
		out = "A"
	}
	fmt.Println(out)	
}