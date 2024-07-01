package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
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
	var lists [][]int = irLine(2)
	N := lists[0][0]
	A := lists[1]
	var result int
	sort.Ints(A)
	for i := 0; i < N-1; i++ {
		if A[i] == A[i+1] {
			result = 0
			break
		}
		result = 1
	}
	if result == 1 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
