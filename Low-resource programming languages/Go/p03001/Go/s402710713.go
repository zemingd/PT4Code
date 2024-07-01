package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}


func nextFloat() float64 {
	sc.Scan()
	f, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func main() {
	W := nextFloat()
	H := nextFloat()
	X := nextFloat()
	Y := nextFloat()
	M := (W * H) / 2
	flag := W/X == 2 && H/Y == 2
	if flag {
		fmt.Printf("%v %d\n", M, 1)
	} else {
		fmt.Printf("%v %d\n", M, 0)
	}
}

