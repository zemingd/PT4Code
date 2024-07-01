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

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	// sc.Split(bufio.ScanWords)
	s := nextLine()
	h := strings.Index(s, "A")
	t := strings.LastIndex(s, "Z")
	fmt.Println(t - h + 1)
}
