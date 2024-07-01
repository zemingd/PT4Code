package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
	buf := make([]byte, 0, 1000000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}

func main() {
	ins := strings.Split(readLine(), " ")

	n, _ := strconv.Atoi(ins[0])
	l, _ := strconv.Atoi(ins[1])

	var a []int

	for i := 1; i <= n; i++ {
		a = append(a, l+i-1)
	}

	min := 10000
	for _, v := range a {
		if math.Abs(float64(min)) > math.Abs(float64(v)) {
			min = v
		}
	}

	var sum int

	for _, v := range a {
		sum += v
	}

	fmt.Println(sum - min)

}
