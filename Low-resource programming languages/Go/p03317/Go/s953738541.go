package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	input := nextLine()
	inputs := strings.Split(input, " ")
	n, _ := strconv.Atoi(inputs[0])
	k, _ := strconv.Atoi(inputs[1])
	input = nextLine()

	answer := ((n - 1) / (k - 1))

	if (n-1)%(k-1) != 0 {
		answer++
	}
	fmt.Println(answer)
}
