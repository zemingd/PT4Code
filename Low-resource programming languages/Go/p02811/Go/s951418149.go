package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	if readInt()*500 >= readInt() {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

var scanner = bufio.NewScanner(os.Stdin)

func init() {
	scanner.Split(bufio.ScanWords)
	//scanner.Split(bufio.ScanLines)
}

func readInt() int {
	scanner.Scan()
	t, _ := strconv.Atoi(scanner.Text())
	return t
}
