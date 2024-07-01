package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.scan()
	return sc.Text()
}

func main()  {
	N, K, X, Y := nextLine(), nextLine(), nextLine(), nextLine()
	var total int
	total = K * X + (N - K) * Y
	fmt.println(total)
}