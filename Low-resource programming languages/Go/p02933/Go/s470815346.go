package main

import (
	"fmt"
	"bufio"
  	"os"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
 	a := nextInt()
	s := nextString()
	fmt.Println(resolve(a, s))
}

func nextString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}

func nextInt(sc *bufio.Scanner) int64 {
	i, err := strconv.ParseInt(nextString(sc), 10, 64)
	if err != nil {
		panic(err)
	}
	return i
}

func resolve(a int64, s string) string {
	if a >= 3200 {
		return "red"
	}
	return s
}