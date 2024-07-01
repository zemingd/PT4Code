package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	scanner = bufio.NewScanner(os.Stdin)
	w       = bufio.NewWriter(os.Stdout)
)

func readInt() (read int) {
	scanner.Scan()
	read, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return
}

func readString() string {
	scanner.Scan()
	return scanner.Text()
}

func main() {
	scanner.Split(bufio.ScanWords)
	defer w.Flush()

	n := readInt()

	s := make(map[string]int, n)
	for i := 0; i < n; i++ {
		key := readString()
		s[key]++
	}

	fmt.Printf("AC x %d\n", s["AC"])
	fmt.Printf("WA x %d\n", s["WA"])
	fmt.Printf("TLE x %d\n", s["TLE"])
	fmt.Printf("RE x %d\n", s["RE"])

}