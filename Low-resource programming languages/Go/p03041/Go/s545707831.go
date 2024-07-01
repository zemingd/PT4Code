package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	BufferSize = 20
)

func readLine(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func scanStr(sc *bufio.Scanner) string {
	if !sc.Scan() {
		panic(nil)
	}
	return sc.Text()
}

func scanInt(sc *bufio.Scanner) int {
	if !sc.Scan() {
		panic(nil)
	}
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

	n := scanInt(sc)
	k := scanInt(sc)
	s := scanStr(sc)
	slice := strings.Split(s, "")

	for i := 0; i < n; i++ {
		if i != k-1 {
			fmt.Printf("%v", slice[i])
		} else {
			fmt.Printf("%v", strings.ToLower(slice[i]))
		}
	}
	fmt.Printf("\n")
}
