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
	word := nextLine()
	if word[2] == word[3] && word[4] == word[5] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
