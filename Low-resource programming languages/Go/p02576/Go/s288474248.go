package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func NextStr() string {
	scanner.Scan()
	return scanner.Text()
}

func NextInt() int {
	i, _ := strconv.Atoi(NextStr())
	return i
}

func main() {
	scanner.Split(bufio.ScanWords)
	n, x, t := NextInt(), NextInt(), NextInt()

	times := n / x
	if n%x != 0 {
		times++
	}

	fmt.Println(t * times)
}
