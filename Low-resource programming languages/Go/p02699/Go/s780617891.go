package main

import (
	"fmt"
	"os"
	"bufio"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	scanner.Scan()
	S, err := strconv.Atoi(scanner.Text())

	if err != nil {
		panic(err)
	}

	scanner.Scan()
	W, err := strconv.Atoi(scanner.Text())

	if err != nil {
		panic(err)
	}

	if W >= S {
		fmt.Println("unsafe")
	} else {
		fmt.Println("safe")
	}
}