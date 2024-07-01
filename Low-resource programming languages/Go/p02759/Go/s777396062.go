package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	scanner.Scan()

	N, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	if N%2 == 0 {
		fmt.Println(N / 2)
	} else {
		fmt.Println((N / 2) + 1)
	}
}
