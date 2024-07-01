package main

import (
	"bufio"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"strconv"
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
	inputs := make([]int, 0)
	for scanner.Scan() {
		word, _ := strconv.Atoi(scanner.Text())
		inputs = append(inputs, word)
	}

	cards := inputs[1:]

	fmt.Println(len(removeDuplicates(cards)))
}

func removeDuplicates(elements []int) []int {
	encountered := map[int]bool{}
	result := []int{}

	for v := range elements {
		if encountered[elements[v]] == true {
		} else {
			encountered[elements[v]] = true
			result = append(result, elements[v])
		}
	}
	return result
}
