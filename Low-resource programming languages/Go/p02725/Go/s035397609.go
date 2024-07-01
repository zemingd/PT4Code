package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var input = irLine(2)
	var K, N = input[0][0], input[0][1]
	var A = input[1]

	var max int
	// var imax int

	for i := 0; i < N-1; i++ {
		if A[i+1]-A[i] > max {
			// imax = i
			max = A[i+1] - A[i]
		}
	}

	if K-A[N-2] > max {
		// imax = len(A) - 1
		max = K - A[N-2]
	}

	fmt.Printf("%d", K-max)

}

//Print Print string data to standard output
func Print(data interface{}) {
	switch data.(type) {
	case string:
		os.Stdout.Write([]byte(data.(string)))
	case int:
		os.Stdout.Write([]byte(strconv.Itoa(data.(int))))
	}
}

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

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func gcd3(a, b, c int) int {
	return gcd(gcd(a, b), c)
}
