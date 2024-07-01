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

	// K
	scanner.Scan()
	K, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	// X
	scanner.Scan()
	X, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	if (500 * K) >= X {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
