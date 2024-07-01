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

	A, _ := strconv.Atoi(ss[0])
	B, _ := strconv.ParseFloat(ss[1], 64)
	BB := int(B*100 + 0.5)

	result := A * BB / 100

	fmt.Print(result)
}
