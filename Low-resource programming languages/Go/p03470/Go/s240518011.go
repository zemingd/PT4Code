package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"os"

	"strconv"
)

func parseInt(s string) int64 {
	i, _ := strconv.ParseInt(s, 0, 64)
	return i
}

func Run(in io.Reader, out io.Writer) error {
	sc := bufio.NewScanner(in)
	sc.Scan()
	n := parseInt(sc.Text())

	d := make(map[string]bool, n)
	for sc.Scan() {
		d[sc.Text()] = true
	}

	fmt.Fprintf(out, "%d\n", len(d))

	return nil
}

func main() {
	err := Run(os.Stdin, os.Stdout)

	if err != nil {
		log.Fatal(err)
	}
}
