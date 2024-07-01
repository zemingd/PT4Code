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

	K, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	digit := 0
	for true {
		if(N / K > 0) {
			digit++
			N /= K
		} else {
			fmt.Println(digit + 1)
			break
		}
	}
}