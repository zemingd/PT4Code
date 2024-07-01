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
	M, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	if N == M {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
