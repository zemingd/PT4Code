package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var scanner = bufio.NewScanner(os.Stdin)

func scanStringToken() (word string) {
	scanner.Scan()
	word = scanner.Text()
	return
}

func main() {
	t := scanStringToken()

	var answer string
	answer = strings.ReplaceAll(t, "P?", "PD")
	answer = strings.ReplaceAll(answer, "?", "D")

	fmt.Println(answer)
}
