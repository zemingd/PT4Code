package main

import (
	"fmt"
	"io"
	"os"
)

func pow(x int, y int) int {
	//_, _ = fmt.Printf("pow: %v, %v\n", x,y)
	z := x
	if y == 0 {
		return 1
	}
	var i int
	for i =1;i<y;i++ {
		z = z * x
	}
	return z
}

func answer(reader io.Reader, writer io.Writer) {
	var a, b int
	_, _ = fmt.Fscan(reader, &a)
	_, _ = fmt.Fscan(reader, &b)
	//var c int
	//c = 1
	//d = a
	var ret float64
	for i:=1; i< a+1; i++ {
		n := 0
		for n = 0; i * pow(2,n) < b;n++{

		}
		ret += float64(1)/float64(a * pow(2,n))
		//fmt.Printf("i:%d, n:%d, %.12f\n", i, n, ret)
	}
	//var r float64
	//r = float64(7)/float64(48)
	_, _ = fmt.Fprintf(writer, "%.12f", ret)
}

func main() {
	answer(os.Stdin, os.Stdout)
}
