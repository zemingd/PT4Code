package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func init() {
	sc = bufio.NewScanner(os.Stdin)
	buffsize := 1000000
	buff := make([]byte, buffsize)
	sc.Buffer(buff, buffsize)
	sc.Split(bufio.ScanWords)
}

func loadint() (result int) {
	sc.Scan()
	result, _ = strconv.Atoi(sc.Text())
	return
}

func main() {
	n := loadint()
	var j int
EXIT:
	for i := 0; i <= n; i += 4 {
		for j = i; j <= n; j += 7 {
			if j == n {
				break EXIT
			}
		}
	}
	if j == n {
		fmt.Print("Yes")
	} else {
		fmt.Print("No")
	}
}
