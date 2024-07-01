package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextFloat64() float64 {
	sc.Scan()
	i, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	//sc.Buffer(nil, 100000000)

	x := nextInt()

	credit := 100
	ans := 0
	for i := 0; credit < x; i++ {
		if i > 0 {
			credit = int(float64(credit) * 1.01)
			ans += 1
		}
	}
	fmt.Println(ans)
}
