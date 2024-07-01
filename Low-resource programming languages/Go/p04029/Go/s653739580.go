package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Scan()
	x := sc.Text()
	n, _ := strconv.Atoi(x)
	fmt.Println(n * (n + 1) / 2)
}
