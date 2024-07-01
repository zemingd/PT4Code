package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n, err := strconv.Atoi(input())
	if err != nil {
		log.Fatalln(err)
	}

	a, err := strconv.Atoi(input())
	if err != nil {
		log.Fatalln(err)
	}

	b, err := strconv.Atoi(input())
	if err != nil {
		log.Fatalln(err)
	}

	if (a%2 == 0 && b%2 == 0) || (a%2 != 0 && b%2 != 0) {
		fmt.Println((b - a) / 2)
		return
	}

	fmt.Println(Min(a-1, n-b) + 1 + (b-a-1)/2)
}

func Min(x, y int) int {
	if x < y {
		return x
	}
	return y
}
