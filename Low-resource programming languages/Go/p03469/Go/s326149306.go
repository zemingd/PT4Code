package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

//============================================================
var sc = bufio.NewScanner(os.Stdin)

func setScSplit() { sc.Split(bufio.ScanWords) }

func readStr() string {
	sc.Scan()

	return sc.Text()
}

func readInt() int {
	i, _ := strconv.Atoi(readStr())

	return i
}

func readFloat() float64 {
	f, _ := strconv.ParseFloat(readStr(), 64)

	return f
}

//=============================================================

func main() {
	setScSplit()

	S := readStr()

	s1 := "2018"
	s2 := S[4:]

	fmt.Println(s1 + s2)
}