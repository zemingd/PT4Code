package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

func main() {
	n := readInt64()

	answer := map[int64]int64{}
	max := n
	for i := int64(2); i*i <= max; i++ {
		if n%i == 0 {
			if _, ok := answer[i]; ok {
				answer[i]++

			} else {
				answer[i] = 1
			}
			n = n / i
			// if you want to answer prime number only, you should take off the comment out below.
			// i--

			if n == 1 {
				break
			}

		}

	}

	if n != 1 {
		answer[n] = 1
	}

	count := int64(0)
	for _, v := range answer {
		count += v
	}
	fmt.Println(count)
}

var (
	scanner *bufio.Scanner
)

func init() {
	scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
}

func readInt64() int64 {
	var t string

	if scanner.Scan() {
		t = scanner.Text()
	}

	n, err := strconv.ParseInt(t, 10, 64)
	if err != nil {
		log.Fatal(err)
	}

	return n
}
