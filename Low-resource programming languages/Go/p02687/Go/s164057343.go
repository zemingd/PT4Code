package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {

	reader := bufio.NewReader(os.Stdin)
	text, _ := reader.ReadString('\n')

	if text == "ABC\n" {
		fmt.Println("ARC")
	} else {
		fmt.Println("ABC")
	}
}
