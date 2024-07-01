package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	BufferSize = 10
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

	b := scanStr(sc)

	switch b {
	case "A":
		fmt.Println("T")
	case "C":
		fmt.Println("G")
	case "G":
		fmt.Println("C")
	case "T":
		fmt.Println("A")
	}
}
