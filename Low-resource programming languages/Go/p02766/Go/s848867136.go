package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var (
	input  = bufio.NewScanner(os.Stdin)
	tokens []string
)

// genTokens generates tokens from the input, and puts it into the tokens array.
func genTokens() {
	if !input.Scan() {
		panic("No more input")
	}

	nextFields := strings.Fields(input.Text())
	tokens = append(tokens, nextFields...)
}

// nextInt returns next int in its input, or panics if no input.
func nextInt() int {
	if len(tokens) == 0 {
		genTokens()
	}
	if len(tokens) == 0 {
		panic("No more input")
	}

	next := tokens[0]
	tokens = tokens[1:]

	ret, err := strconv.Atoi(next)
	if err != nil {
		panic(err)
	}
	return ret
}

// nextInt64 returns next int in its input, or panics if no input.
func nextInt64() int64 {
	if len(tokens) == 0 {
		genTokens()
	}
	if len(tokens) == 0 {
		panic("No more input")
	}

	next := tokens[0]
	tokens = tokens[1:]

	ret, err := strconv.ParseInt(next, 10, 64)
	if err != nil {
		panic(err)
	}
	return ret
}

// next returns the next string separated by spaces, or panics if no input.
func next() string {
	if len(tokens) == 0 {
		genTokens()
	}
	if len(tokens) == 0 {
		panic("No more input")
	}

	next := tokens[0]
	tokens = tokens[1:]

	return next
}

func main() {
	n := nextInt()
	k := nextInt()

	digits := 0
	for n > 0 {
		n /= k
		digits++
	}
	fmt.Println(digits)
}
