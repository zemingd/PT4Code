package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func main()  {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	scanner.Scan()
	N, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

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

	repeat := N / (A + B)
	remain := N % (A + B)

	if remain > A {
		remain = A
	}

	fmt.Println(repeat * A + remain)
}