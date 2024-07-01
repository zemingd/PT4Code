package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	value, _ := strconv.Atoi(sc.Text())
	return value
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Scan()
	K := scanInt()
	sc.Scan()
	S := sc.Text()
	sliced := strings.Split(S, "")
	sliced[K-1] = strings.ToLower(sliced[K-1])
	fmt.Printf("%s\n", strings.Join(sliced, ""))
}