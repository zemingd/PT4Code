package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

//StrStdin Read standard input data
func StrStdin(line int) [][]string {
	var stringInput [][]string
	scanner := bufio.NewScanner(os.Stdin)

	for i := 0; i < line; i++ {
		scanner.Scan()
		if s := scanner.Text(); s != "" {
			stringInput = append(stringInput, strings.Split(strings.TrimSpace((scanner.Text())), " "))
		} else {
			break
		}
	}

	return stringInput
}

//rLine Read standard input data
func rLine(line int) [][]string {
	var rdr = bufio.NewReaderSize(os.Stdin, 1000000)
	var buf = make([]byte, 0, 1000000)
	var stringInput [][]string

	for i := 0; i < line; {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			stringInput = append(stringInput, strings.Split(strings.TrimSpace((string(buf))), " "))
			buf = []byte{}
			i++
		}
	}
	return stringInput
}

func irLine(i int) [][]int {
	return alitoas(rLine(i))
}

//itoa converts string to integer
func itoa(s string) int {
	var i, _ = strconv.Atoi(s)
	return i
}

func itoas(S []string) []int {
	var result = make([]int, len(S))
	for i, s := range S {
		result[i] = itoa(s)
	}
	return result
}

func alitoas(S [][]string) [][]int {
	var result = make([][]int, len(S))
	for i, s := range S {
		result[i] = itoas(s)
	}
	return result
}

func main() {
	var N int
	fmt.Scan(&N)
	var a [][]string = rLine(N + 1)
	aint := alitoas(a)
	var swch int = aint[1][0]
	var trying int = 0
	var result int
	for i := 1; i < N+1; i++ {
		trying++
		if swch == 2 {
			result = 1
			break
		}
		swch = aint[swch][0]
		result = 0
	}
	if result == 1 {
		fmt.Println(trying)
	} else {
		fmt.Println(-1)
	}
}
