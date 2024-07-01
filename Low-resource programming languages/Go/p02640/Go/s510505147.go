package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var X, Y int
	var err error
	var target int

	scanner := bufio.NewScanner(os.Stdin)

	scanner.Split(bufio.ScanWords)

	scanner.Scan()
	X, err = strconv.Atoi(scanner.Text())

	if err != nil {
		panic(err)
	}

	scanner.Scan()
	Y, err = strconv.Atoi(scanner.Text())

	if err != nil {
		panic(err)
	}

	for i := 0; i < X+1; i++ {
		target = i*2 + (X-i)*4
		if Y == target {
			fmt.Println("Yes")
			os.Exit(0)
		}
	}

	fmt.Println("No")
}
