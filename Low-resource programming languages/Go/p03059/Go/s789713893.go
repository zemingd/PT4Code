package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var s = bufio.NewScanner(os.Stdin)

func getInt() int {
	s.Scan()
	a, _ := strconv.Atoi(s.Text())
	return a
}

func main() {
	s.Split(bufio.ScanWords)
	a, b, t := getInt(), getInt(), getInt()

	ans := b * (t / a)

	fmt.Println(ans)

}
