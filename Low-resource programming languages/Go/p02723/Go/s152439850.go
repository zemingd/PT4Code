package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	text, _ := reader.ReadString('\n')
	if text[2] == text[3] && text[4] == text[5] && text[1] != text[0] && text[3] != text[4] {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
