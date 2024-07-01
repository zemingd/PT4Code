package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	scanner.Scan()
	N, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}

	scanner.Scan()
	M, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}

	var day int

	for i := 0; i < M; i++ {
		scanner.Scan()
		day, err = strconv.Atoi(scanner.Text())
		if err != nil {
			panic(err)
		}
		N -= day
	}
	if N >= 0 {
		fmt.Println(N)
	} else {
		fmt.Println("-1")
	}
}
