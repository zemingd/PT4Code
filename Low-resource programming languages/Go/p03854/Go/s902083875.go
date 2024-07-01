package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
)

var (
	reader io.Reader = os.Stdin
	writer io.Writer = os.Stdout
)

func main() {
	run()
}

func run() {
	// scanner := bufio.NewScanner(reader)
	// scanner.Scan()
	// S := scanner.Text()
	burReader := bufio.NewReaderSize(reader, 100000)
	buf := make([]byte, 0, 100000)

	for {
		line, isPrefix, err := burReader.ReadLine()

		if err != nil {
			if err.Error() == "EOF" {
				break
			}

			panic(err)
		}

		buf = append(buf, line...)

		if !isPrefix {
			break
		}
	}

	input := buf
	words := []string{"dream", "dreamer", "erase", "eraser"}

LOOP_MAIN:
	for i := len(input) - 1; i >= 0; {
	LOOP_WORDS:
		for _, word := range words {
			if len(word)-1 > i {
				continue
			}

			for j := 0; j < len(word); j++ {
				if word[len(word)-1-j] != input[i-j] {
					continue LOOP_WORDS
				}
			}

			// fmt.Println(i, word)
			i -= len(word)
			// fmt.Println(i, word)
			continue LOOP_MAIN
		}

		fmt.Fprintln(writer, "NO")
		return
	}
	fmt.Fprintln(writer, "YES")
}

func reverse(str string) string {
	runes := []rune(str)

	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}

	return string(runes)
}
