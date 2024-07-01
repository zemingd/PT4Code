package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, 1000000)

	a, b, c := getInt(), getInt(), getInt()

	A := float64(a)
	B := float64(b)
	C := float64(c)

	if math.Sqrt(A)+math.Sqrt(B) < math.Sqrt(C) {
		out("Yes")
	} else {
		out("No")
	}
}
