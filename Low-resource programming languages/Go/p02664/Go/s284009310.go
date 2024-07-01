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
	answer = strings.Replace(t, "P?", "PD", -1)
	answer = strings.Replace(answer, "??", "PD", -1)
	answer = strings.Replace(answer, "?D", "PD", -1)
	answer = strings.Replace(answer, "?", "D", -1)

	fmt.Println(answer)
}
