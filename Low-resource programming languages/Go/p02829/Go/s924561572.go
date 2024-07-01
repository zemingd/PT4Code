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
	A, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	scanner.Scan()
	B, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(6 - A - B)

}
