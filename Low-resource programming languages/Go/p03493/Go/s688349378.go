package main

import (
	"bufio"
	"fmt"
	"io"
	"log"
	"os"

	"strconv"
	"strings"
)

func countToString(txts []string, expected string) int64 {
	var cnt int64 = 0

	for _, txt := range txts {
		if txt == expected {
			cnt++
		}
	}
	return cnt
}

func Run(in io.Reader, out io.Writer) error {
	sc := bufio.NewScanner(in)

	for sc.Scan() {
		line := sc.Text()
		txts := strings.Split(line, "")
		cnt := countToString(txts, "1")
		fmt.Fprintf(out, "%d\n", cnt)
		return nil
	}

	return nil
}

func main() {
	err := Run(os.Stdin, os.Stdout)

	if err != nil {
		log.Fatal(err)
	}
}
