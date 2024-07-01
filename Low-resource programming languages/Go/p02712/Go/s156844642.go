package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	var N, sum int

	N, _ = strconv.Atoi(readLine())
	sum = 0

	for i := 1; i <= N; i++ {
		if i%3 != 0 && i%5 != 0 {
			sum += i
		}
	}

	fmt.Println(sum)
}
