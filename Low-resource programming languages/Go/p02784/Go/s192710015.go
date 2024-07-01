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
	H, err := strconv.Atoi(scanner.Text())
	scanner.Scan()
	N, err := strconv.Atoi(scanner.Text())

	target := 0
	var errs error

	for i := 0; i < N; i++ {
		scanner.Scan()
		target, errs = strconv.Atoi(scanner.Text())
		if errs != nil {
			log.Fatal(err)
		}
		H -= target
	}

	if H <= 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
