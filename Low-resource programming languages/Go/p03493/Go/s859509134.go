package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func convertInt(str string) int {
	num, e := strconv.Atoi(str)
	if e != nil {
		panic(e)
	}
	return num
}

func main() {
	sc.Split(bufio.ScanWords)
	s := nextLine()
	fmt.Println(strings.Count(s, "1"))
}