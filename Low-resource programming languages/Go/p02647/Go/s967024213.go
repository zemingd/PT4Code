package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func configure(scanner *bufio.Scanner) {
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, 1000005), 1000005)
}
func getNextString(scanner *bufio.Scanner) string {
	scanned := scanner.Scan()
	if !scanned {
		panic("scan failed")
	}
	return scanner.Text()
}
func getNextInt(scanner *bufio.Scanner) int {
	i, _ := strconv.Atoi(getNextString(scanner))
	return i
}
func getNextInt64(scanner *bufio.Scanner) int64 {
	i, _ := strconv.ParseInt(getNextString(scanner), 10, 64)
	return i
}
func getNextFloat64(scanner *bufio.Scanner) float64 {
	i, _ := strconv.ParseFloat(getNextString(scanner), 64)
	return i
}
func main() {
	fp := os.Stdin
	wfp := os.Stdout
	
	scanner := bufio.NewScanner(fp)
	configure(scanner)
	writer := bufio.NewWriter(wfp)
	defer func() {
		r := recover()
		if r != nil {
			fmt.Fprintln(writer, r)
		}
		writer.Flush()
	}()
	solve(scanner, writer)
}
func solve(scanner *bufio.Scanner, writer *bufio.Writer) {
	N := getNextInt64(scanner)
	K := getNextInt64(scanner)

	A := []int64{}
	for i := int64(0); i < N; i++ {
		A = append(A, getNextInt64(scanner))		
	}

	for k := int64(0); k < K; k++ {
		B := make([]int64, N+1)
		for i := int64(0); i < N; i++ {
			l := max(0, i - A[i])
			r := min(i + A[i] +1, N)
			B[l]++
			B[r]--
		}
		for i := int64(0); i < N; i++ {
			B[i+1] += B[i]
		}
		B = B[:N]

		isSame := true
		for i, e := range A {
			if e != B[i] {
				isSame = false
				break
			}
		}

		if isSame {
			break
		}
		A = B
	}

	for i := int64(0); i < N-1; i++ {
		fmt.Fprintf(writer, "%d ",A[i])
	}
	fmt.Fprintln(writer, A[N-1])
}

func max(x, y int64) int64 {
	if x >= y {
		return x
	}
	return y
}

func min(x, y int64) int64 {
	if x <= y {
		return x
	}
	return y
}
