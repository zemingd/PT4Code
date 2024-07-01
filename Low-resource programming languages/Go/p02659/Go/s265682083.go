package main

import (
	"bufio"
	"fmt"
	"math"
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

	a, err := strconv.ParseInt(t, 10, 64)
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

	fmt.Println(int64(math.Round(math.Trunc(float64(a) * b))))
}
