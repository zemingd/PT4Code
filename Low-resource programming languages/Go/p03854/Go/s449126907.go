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
	// input := []rune(S)
	// words := [][]rune{[]rune("dream"), []rune("dreamer"), []rune("erase"), []rune("eraser")}
	words := []string{"dream", "dreamer", "erase", "eraser"}

	S = reverse(S)

	for i, word := range words {
		words[i] = reverse(word)
	}

	can := true
	for i := 0; i < len(S); {
		var can2 bool

		for _, word := range words {
			if len(S) >= i+len(word) && S[i:i+len(word)] == word {
				can2 = true
				i += len(word)
			}
		}

		if !can2 {
			can = false
			break
		}
	}

	if can {
		fmt.Fprintln(writer, "YES")
	} else {
		fmt.Fprintln(writer, "NO")
	}

	// LOOP_MAIN:
	// 	for len(S) > 0 {
	// 		for _, word := range words {
	// 			if strings.HasPrefix(S, word) {
	// 				S = S[len(word):]
	// 				continue LOOP_MAIN
	// 			}
	// 		}

	// 		fmt.Fprintln(writer, "NO")
	// 		return
	// 	}
	// 	fmt.Fprintln(writer, "YES")

	// fmt.Println(S)

	// LOOP_MAIN:
	// 	for i := len(input) - 1; i >= 0; {
	// 	LOOP_WORDS:
	// 		for _, word := range words {
	// 			if len(word)-1 > i {
	// 				continue
	// 			}

	// 			for j := 0; j < len(word); j++ {
	// 				if word[len(word)-1-j] != input[i-j] {
	// 					continue LOOP_WORDS
	// 				}
	// 			}

	// 			// fmt.Println(i, word)
	// 			i -= len(word)
	// 			// fmt.Println(i, word)
	// 			continue LOOP_MAIN
	// 		}

	// 		fmt.Fprintln(writer, "NO")
	// 		return
	// 	}
	// 	fmt.Fprintln(writer, "YES")

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

func reverse(str string) string {
	runes := []rune(str)

	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}

	return string(runes)
}
