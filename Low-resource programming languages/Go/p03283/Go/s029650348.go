package main

import (
	"bufio"
	"bytes"
	"fmt"
	"os"
	"strconv"
)

var nextReader func() string

func NewScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	return func() string {
		r.Scan()
		// if !r.Scan() {
		// 	panic("failed scan")
		// }
		return r.Text()
	}
}
func nextString() string {
	return nextReader()
}
func nextInt64() int64 {
	v, _ := strconv.ParseInt(nextReader(), 10, 64)
	return v
}
func readInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}
func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(nextReader(), 64)
	return f
}
// ---------------------------------------------------------


func main() {
  	nextReader = NewScanner()
	N := readInt()
	M := readInt()
	Q := readInt()
	var data [510][510]int
	for i := 0; i < M; i++ {
		l, r := readInt(), readInt()
		data[l][r]++
	}

	for i := N; i >= 1; i-- {
		for j := 1; j <= N; j++ {
			data[i][j] += data[i+1][j]
			data[i][j] += data[i][j-1]
			data[i][j] -= data[i+1][j-1]
		}
	}
	var buf bytes.Buffer
	for i := 0; i < Q; i++ {
		p, q := readInt(), readInt()
		buf.WriteString(strconv.Itoa(data[p][q]))
		buf.WriteString("\n")
	}
	fmt.Println(buf.String())
}
