package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var first, other = mirLine(2)

	var N, _ int = first[0], first[1]
	var sc = other

	var c []int = make([]int, 5)
	var check []bool = make([]bool, 5)

	for _, l := range sc {
		if check[l[0]-1] && c[l[0]-1] != l[1] {
			fmt.Printf("%d", -1)
			return
		}

		c[l[0]-1] = l[1]
		check[l[0]-1] = true
	}

	for i, ch := range check {
		if !ch {
			if i == 0 && N > 0 {
				c[0] = 1
			} else {
				c[i] = 0
			}
		}
	}

	if c[0] == 0 && N > 1 {
		fmt.Printf("%d", -1)
		return
	}

	for i := 0; i < N; i++ {
		fmt.Printf("%d", c[i])
	}
	return

}

//minf returns min{a, b}(a, b: float64)
func minf(a, b float64) float64 {
	if a > b {
		return b
	}
	return a
}

//mini returns min{a, b} (a, b: int)
func mini(a, b int) int {
	if a > b {
		return b
	}
	return a
}

//paw paw returns f^num
func paw(f float64, num int) float64 {
	var result float64 = 1
	for i := 0; num > i; i++ {
		result *= f
	}
	return result
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

//rLine Read all standard input data
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

//irLine Read Standard input data and convert into integer
func irLine(i int) [][]int {
	return alitoas(rLine(i))
}

//mtrLine Read multi-line standard input data
// put the location of data of the number of lines in a first line
//ex:
// 3 5
// 1 2
// 2 3
// 3 5
// you have to put 1, where the number 3 put in the first line
func mrLine(line int) (first []int, other [][]string) {
	var rdr = bufio.NewReaderSize(os.Stdin, 1000000)
	var buf = make([]byte, 0, 1000000)
	var Input []string
	var stringInput [][]string

	{
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			Input = strings.Split(strings.TrimSpace((string(buf))), " ")
			buf = []byte{}
		}
	}

	first = itoas(Input)

	for i := 0; i < first[line-1]; {
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
	return first, stringInput
}

//mirLine  Read multi-line standard input data and convert into integer data
// put the location of data of the number of lines in a first line
//ex:
// 3 5
// 1 2
// 2 3
// 3 5
// you have to put 1, where the number 3 put in the first line
func mirLine(line int) (first []int, other [][]int) {
	var f, o = mrLine(line)
	return f, alitoas(o)
}

//itoa converts string to integer
func itoa(s string) int {
	var i, _ = strconv.Atoi(s)
	return i
}

//itoas converts string slice to integer slice
func itoas(S []string) []int {
	var result = make([]int, len(S))
	for i, s := range S {
		result[i] = itoa(s)
	}
	return result
}

//alitoas converts string 2 dimention slice to intger one
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
