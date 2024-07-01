package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var charMap = map[string]string{
		"A": "T",
		"T": "A",
		"C": "G",
		"G": "C",
	}
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	input := stdin.Text()
	fmt.Println(charMap[input])
}
