package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"os"

	"strconv"
)

func solve(in io.Reader, out io.Writer) error {
	sc := bufio.NewScanner(in)
	sc.Split(bufio.ScanWords)
	a, b, x := nextInt(sc), nextInt(sc), nextInt(sc)

	if a > x || a+b < x {
		fmt.Fprintln(out, "NO")
	} else {
		fmt.Fprintln(out, "YES")
	}

	return nil
}

func nextInt(sc *bufio.Scanner) int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	err := solve(os.Stdin, os.Stdout)
	if err != nil {
		log.Fatal(err)
	}
}
