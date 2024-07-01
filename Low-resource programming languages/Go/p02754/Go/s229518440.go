package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func main() {
	fmt.Printf("%d\n", resolve(parseProblem(os.Stdin)))
}

func parseProblem(r io.Reader) (n, a, b int) {
	sc := bufio.NewScanner(r)
	sc.Split(bufio.ScanWords) // bufio.ScanLines

	n = scanInt(sc)
	a = scanInt(sc)
	b = scanInt(sc)
	return
}

func scanInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return int(i)
}

func resolve(n, a, b int) int {
	setLen := a + b
	setNum := n / setLen
	num := 0
	num += setNum * a
	lastLen := n - setNum*setLen
	if lastLen < a {
		num += lastLen
	} else {
		num += a
	}
	return num
}
