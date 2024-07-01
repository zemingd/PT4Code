package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	a := make([][]int, 3)
	for i := 0; i < 3; i++ {
		a[i] = make([]int, 3)
		a[i][0] = readI()
		a[i][1] = readI()
		a[i][2] = readI()
	}
	n := readI()
	for i := 0; i < n; i++ {
		b := readI()
		for j := 0; j < 3; j++ {
			for k := 0; k < 3; k++ {
				if a[j][k] == b {
					a[j][k] = 0
				}
			}
		}
	}

	for i := 0; i < 3; i++ {
		if a[i][0] == 0 && a[i][1] == 0 && a[i][2] == 0 {
			fmt.Println("Yes")
			return
		}
		if a[0][i] == 0 && a[1][i] == 0 && a[2][i] == 0 {
			fmt.Println("Yes")
			return
		}
	}
	if a[1][1] == 0 {
		if (a[0][0] == 0 && a[2][2] == 0) || (a[0][2] == 0 && a[2][0] == 0) {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}

/*-----------Input utils-----------*/

var sc = bufio.NewScanner(os.Stdin)

func init() {
	if len(os.Args) >= 2 {
		if os.Args[1] == "debug" {
			debug()
		}
	}
	const buf = 200100
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, buf), buf)
}

func debug() {
	testFile, err := os.Open("./test/sample-1.in")
	if err != nil {
		fmt.Fprintln(os.Stderr, "There is no testfile.")
		os.Exit(1)
	}
	sc = bufio.NewScanner(testFile)
}

func readS() string {
	sc.Scan()
	return sc.Text()
}

func readR() []rune {
	return []rune(readS())
}

func readI() int {
	i, _ := strconv.Atoi(readS())
	return i
}

func readF() float64 {
	f, _ := strconv.ParseFloat(readS(), 64)
	return f
}
