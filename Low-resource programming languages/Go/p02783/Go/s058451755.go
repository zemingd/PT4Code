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
	H, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	scanner.Scan()
	A, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	if i := H % A; i != 0 {
		fmt.Println(H / A + 1)
	} else {
		fmt.Println(H / A)
	}
}