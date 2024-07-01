package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func scanInt() int {
	sc.Scan()
	a, err := strconv.Atoi(sc.Text())
	if err != nil {
		fmt.Println(err)
	}
	return a
}
func scanText() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)

	N := scanInt()

	var (
		ACi  int
		WAi  int
		TLEi int
		REi  int
	)
	for i := 0; i < N; i++ {
		str := scanText()
		switch str {
		case "AC":
			ACi++
		case "WA":
			WAi++
		case "TLE":
			TLEi++
		case "RE":
			REi++
		}
	}
	fmt.Printf("AC x %v\n", ACi)
	fmt.Printf("WA x %v\n", WAi)
	fmt.Printf("TLE x %v\n", TLEi)
	fmt.Printf("RE x %v\n", REi)
}
