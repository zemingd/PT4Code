package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	t := nextString()
	fmt.Println(strings.Replace(t, "?", "D", -1))
}