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
	a := scanner.Text()
	scanner.Scan()
	b := scanner.Text()

	aInt, err := strconv.Atoi(a)
	if err != nil {
		log.Fatal(err)
	}

	bInt, err := strconv.Atoi(b)
	if err != nil {
		log.Fatal(err)
	}

	answer := ""

	if aInt > bInt {
		for i := 0; i < aInt; i++ {
			answer += b
		}
		fmt.Println(answer)
	} else {
		for i := 0; i < bInt; i++ {
			answer += a
		}
		fmt.Println(answer)
	}
}
