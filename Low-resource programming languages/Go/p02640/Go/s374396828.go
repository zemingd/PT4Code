package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	num, _ := strconv.Atoi(scanString())
	return num
}

func scanString() string {
	sc.Scan()
	return sc.Text()
}

func init() {
	sc.Split(bufio.ScanWords)
}

func main() {
	x, y := scanInt(), scanInt()

	ans := "No"
	if  (y-2*x) % 2 == 0 && (y-2*x) / 2 < x {
		ans = "Yes"
	}
	fmt.Println(ans)
}
