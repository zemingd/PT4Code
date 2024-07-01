package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"unicode/utf8"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	scanner.Scan()
	K, err := strconv.Atoi(scanner.Text())

	if err != nil {
		panic(err)
	}

	scanner.Scan()
	S := scanner.Text()

	if K >= utf8.RuneCountInString(S) {
		fmt.Println(S)
	} else {
		fmt.Printf("%s...\n", S[:K])
	}
}
