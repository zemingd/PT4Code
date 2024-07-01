package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	var text string
	if scanner.Scan() {
		text = scanner.Text()
	}
	for i := 0; i < 10; i++ {
		if strings.Count(text, strconv.Itoa(i)) > 1 && strings.Count(text, strconv.Itoa(i)) < 3 {
			fmt.Printf("Yes")
			os.Exit(0)
		}
	}
	fmt.Println("No")
}
