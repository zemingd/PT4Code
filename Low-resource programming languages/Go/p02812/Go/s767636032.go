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

	// N
	scanner.Scan()
	N, err := strconv.Atoi(scanner.Text())
	if err != nil {
		log.Fatal(err)
	}

	// S
	scanner.Scan()
	S := scanner.Text()

	counter := 0

	for i := 0; i < N-2; i++ {
		if S[i:i+3] == "ABC" {
			counter++
		}
	}

	fmt.Println(counter)
}
