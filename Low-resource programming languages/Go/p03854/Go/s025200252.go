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
	scanner := bufio.NewScanner(reader)
	scanner.Scan()
	runes := []rune(scanner.Text())

	candidates := []string{"dream", "dreamer", "erase", "eraser"}

	type queueData struct {
		index     int
		candidate string
	}
	queue := []queueData{}

	for _, c := range candidates {
		queue = append(queue, queueData{0, c})
	}

LOOP_MAIN:
	for len(queue) > 0 {
		i, candidate := queue[0].index, queue[0].candidate
		queue = queue[1:]

		if i+len(candidate) > len(runes) {
			continue
		}

		for j, r := range candidate {
			if runes[i+j] != r {
				continue LOOP_MAIN
			}
		}

		i += len(candidate)

		if i == len(runes) {
			fmt.Fprintln(writer, "YES")
			return
		}

		for _, candidate := range candidates {
			queue = append(queue, queueData{i, candidate})
		}
	}

	fmt.Fprintln(writer, "NO")
}
