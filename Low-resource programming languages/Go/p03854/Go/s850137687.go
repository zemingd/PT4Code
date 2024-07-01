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
	S := scanner.Text()
	input := []rune(S)
	words := [][]rune{[]rune("dream"), []rune("dreamer"), []rune("erase"), []rune("eraser")}

	// fmt.Println(S)

LOOP_MAIN:
	for i := len(input) - 1; i >= 0; {
	LOOP_WORDS:
		for _, word := range words {
			if len(word)-1 > i {
				continue
			}

			for j, k := len(word)-1, 0; j >= 0; j, k = j-1, k+1 {
				if word[j] != input[i-k] {
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

	// 	type queueData struct {
	// 		index     int
	// 		candidate string
	// 	}
	// 	queue := []queueData{}

	// 	for _, c := range candidates {
	// 		queue = append(queue, queueData{0, c})
	// 	}

	// LOOP_MAIN:
	// 	for len(queue) > 0 {
	// 		i, candidate := queue[0].index, queue[0].candidate
	// 		queue = queue[1:]

	// 		if i+len(candidate) > len(runes) {
	// 			continue
	// 		}

	// 		for j, r := range candidate {
	// 			if runes[i+j] != r {
	// 				continue LOOP_MAIN
	// 			}
	// 		}

	// 		i += len(candidate)

	// 		if i == len(runes) {
	// 			fmt.Fprintln(writer, "YES")
	// 			return
	// 		}

	// 		for _, candidate := range candidates {
	// 			queue = append(queue, queueData{i, candidate})
	// 		}
	// 	}

	// 	fmt.Fprintln(writer, "NO")
}
