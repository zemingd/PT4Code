package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	text, _ := reader.ReadString('\n')
	// fmt.Println(text)
	text = strings.TrimRight(text, "\n")
	if strings.Compare(text, "AAA") == 0 || strings.Compare(text, "BBB") == 0 {
		fmt.Printf("Yes\n")
	} else {
		fmt.Printf("No\n")
	}
	os.Exit(0)
}