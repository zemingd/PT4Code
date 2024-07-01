package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	BufferSize = 100
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

	s := scanStr(sc)
	switch s {
	case "SUN":
		fmt.Println("7")
	case "MON":
		fmt.Println("6")
	case "TUE":
		fmt.Println("5")
	case "WED":
		fmt.Println("4")
	case "THU":
		fmt.Println("3")
	case "FRI":
		fmt.Println("2")
	case "SAT":
		fmt.Println("1")
	}
}
