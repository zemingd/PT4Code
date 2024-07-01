package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n, _ :=  strconv.ParseInt(nextLine(), 10, 0)
	if n % 2 != 0 {
		fmt.Println(0)
		return
	}
	total := int64(0)
	for j := n; j > 0; j = j / 5  {
		total += j / 10
	}
	fmt.Println(total)
}
