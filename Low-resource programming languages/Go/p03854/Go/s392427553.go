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
	input := make([]byte, 0, 100000)

	for {
		line, isPrefix, err := burReader.ReadLine()

		if err != nil {
			if err.Error() == "EOF" {
				break
			}

			panic(err)
		}

		input = append(input, line...)

		if !isPrefix {
			break
		}
	}

	// words := []string{"dream", "dreamer", "erase", "eraser"}
	words := [][]byte{[]byte("dream"), []byte("dreamer"), []byte("erase"), []byte("eraser")}

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

			i -= len(word)
			continue LOOP_MAIN
		}

		fmt.Fprintln(writer, "NO")
		return
	}
	fmt.Fprintln(writer, "YES")
}
