package main

import (
	"bufio"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"sort"
	"strings"
)

func main() {

	body, err := ioutil.ReadAll(os.Stdin)
	if err != nil {
		log.Println(err)
	}
	scanner := bufio.NewScanner(strings.NewReader(string(body)))
	scanner.Split(bufio.ScanWords)
	if err := scanner.Err(); err != nil {
		fmt.Fprintln(os.Stderr, "reading input:", err)
	}
	inputs := make([]string, 0)
	for scanner.Scan() {
		word := scanner.Text()
		word = strings.TrimSpace(word)
		inputs = append(inputs, sortString(word))
	}

	words := inputs[1:]
	var counter int
	// for i := 0; i < len(words); i++ {
	// 	baseWord := words[i]
	// 	for j := i + 1; j < len(words); j++ {
	// 		if baseWord == words[j] {
	// 			counter++
	// 		}
	// 	}
	// }
	for i, w := range words {
		dup := 0
		for j := 0; j < i; j++ {

			if w == words[j] {
				dup++
			}
			if j+1 == i {
				counter += dup
			}
		}
	}

	fmt.Println(counter)
}

func sortString(word string) string {
	chars := []string{}
	for _, c := range word {
		chars = append(chars, string(c))
	}
	sort.Sort(sort.StringSlice(chars))
	return strings.Join(chars, "")
}
