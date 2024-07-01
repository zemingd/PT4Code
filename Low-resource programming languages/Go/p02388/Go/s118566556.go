package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func cubic(x int) int {
	return x * x * x
}

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	scanner.Scan()
	num, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(1)
	}
	fmt.Println(cubic(num))
}

