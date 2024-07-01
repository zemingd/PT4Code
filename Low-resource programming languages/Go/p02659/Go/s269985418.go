package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var t string
	var s = bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)

	if s.Scan() {
		t = s.Text()
	}

	a, err := strconv.ParseUint(t, 10, 64)
	if err != nil {
		fmt.Println(err)
		return
	}

	if s.Scan() {
		t = s.Text()
	}

	b, err := strconv.ParseFloat(t, 64)
	if err != nil {
		fmt.Println(err)
		return
	}

	fmt.Println(a * uint64(b*100) / 100)
}
