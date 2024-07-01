package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func scanStringToken() (word string) {
	scanner.Scan()
	word = scanner.Text()
	return
}

func scanNumberToken() (num int) {
	scanner.Scan()
	num, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return
}

func main() {
	n := scanNumberToken()

	fmt.Println(n % 1000)
}
