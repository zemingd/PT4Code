package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func check(e error) {
	if e != nil {
		log.Fatalf("error: %v\n", e)
	}
}

func main() {
	stdin := bufio.NewScanner(os.Stdin)
	stdin.Scan()
	n, err := strconv.Atoi(stdin.Text())
	check(err)

	var count int
	for i := 1; i <= n; i += 2 {
		if hasEightDivisor(i) {
			count++
		}
	}

	fmt.Println(count)
}

func hasEightDivisor(num int) bool {
	var count int
	for i := 1; i <= num; i++ {
		if num%i == 0 {
			count++
		}
	}
	return count == 8
}
