package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n, x int
	fmt.Scan(&n)
	fmt.Scan(&x)

	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)

	d := 0
	ret := 1
	for i := 0; i < n; i++ {
		scanner.Scan()
		l, _ := strconv.Atoi(scanner.Text())
		d += l
		if d <= x {
			ret++
		}
	}

	fmt.Println(ret)
}
