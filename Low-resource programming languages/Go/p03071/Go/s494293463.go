package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func nextLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sum := 0
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a, _ := strconv.Atoi(nextLine(sc))
	b, _ := strconv.Atoi(nextLine(sc))

	if a > b {
		sum += a + a - 1
	} else if a == b {
		sum += a + b
	} else {
		sum += b + b - 1
	}
	fmt.Println(sum)
}
