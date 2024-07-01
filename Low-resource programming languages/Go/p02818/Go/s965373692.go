package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	a, _ := strconv.Atoi(sc.Text())
	sc.Scan()
	b, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	if a >= n {
		a -= n
	} else if a+b >= n {
		b -= n - a
		a = 0
	} else {
		a, b = 0, 0
	}
	fmt.Println(a, b)
}
