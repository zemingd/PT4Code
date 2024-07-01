package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	S, T := readString(), readString()
	fmt.Println(T + S)
}

/////////////////////////////////////////
var scanner = bufio.NewScanner(os.Stdin)

func init() {
	scanner.Split(bufio.ScanWords)
	//scanner.Split(bufio.ScanLines)
}

func readString() string {
	scanner.Scan()
	return scanner.Text()
}