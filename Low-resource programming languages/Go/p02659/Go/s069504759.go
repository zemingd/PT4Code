package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Scan()
	ss := strings.Fields(sc.Text())

	A, _ := strconv.ParseUint(ss[0], 10, 64)
	B, _ := strconv.ParseFloat(ss[1], 64)
	BB := uint64(B * 100)

	result := A * BB / 100

	fmt.Print(result)
}
