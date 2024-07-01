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
	const maxCapacity = 2*1e5 + 10
	buf := make([]byte, maxCapacity)
	scanner.Buffer(buf, maxCapacity)
	scanner.Split(bufio.ScanWords)
	defer w.Flush()
	s := readString()
	t := readString()

	cnt := 0
	fmt.Scan(&s, &t)
	for i := 0; i < len(s); i++ {
		if s[i] != t[i] {
			cnt++
		}
	}
	fmt.Println(cnt)
}
