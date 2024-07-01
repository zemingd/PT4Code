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

	scanner.Split(bufio.ScanWords)

	scanner.Scan()
	N, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	scanner.Scan()
	R, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	if N >= 10 {
		fmt.Println(R)
	} else {
		fmt.Println(R + (100 * (10 - N)))
	}
}
