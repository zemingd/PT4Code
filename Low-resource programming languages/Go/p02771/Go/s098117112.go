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
	A, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	scanner.Scan()
	B, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}
	scanner.Scan()
	C, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	if !(A == B && B == C && C == A) {
		if A == B || B == C || C == A {
			fmt.Println("Yes")
			os.Exit(0)
		}
	}

	fmt.Println("No")

}
