package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	s, t := next(), next()

	b := []byte(s)
	for i := 0; i < len(s); i++ {
		if string(append(b[i:], b[:i]...)) == t {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}