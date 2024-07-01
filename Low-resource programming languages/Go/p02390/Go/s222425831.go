package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

var (
	reader io.Reader = os.Stdin
	writer io.Writer = os.Stdout
)

func main() {
	reader = os.Stdin
	writer = os.Stdout
	run()
}

func run() {
	var res []string
	secs := readIntsFromStdin()[0][0]

	mins, secs := secs/60, secs%60
	hours, mins := mins/60, mins%60

	res = append(res, strconv.Itoa(hours))
	res = append(res, strconv.Itoa(mins))
	res = append(res, strconv.Itoa(secs))

	fmt.Fprintln(writer, strings.Join(res, ":"))
}

// ReadInts parses lines of inputs into 2D int array.
func readIntsFromStdin() [][]int {
	out := [][]int{}
	scanner := bufio.NewScanner(reader)

	for scanner.Scan() {
		var ints []int

		for _, s := range strings.Split(scanner.Text(), " ") {
			i, err := strconv.Atoi(s)

			if err != nil {
				fmt.Fprintln(os.Stderr, "Failed to parse string into int.", err)
				os.Exit(1)
			}

			ints = append(ints, i)
		}

		out = append(out, ints)
	}

	return out
}

