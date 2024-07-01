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
	// c := int(n / 1000)
	mod := n % 1000

	if mod == 0 {
		fmt.Println(0)
	} else {
		fmt.Println(1000 - mod)
	}

}
