package main

import (
	"bufio"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"sort"
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
	inputs := make([]float64, 0)
	for scanner.Scan() {
		word := scanner.Text()
		word = strings.TrimSpace(word)
		val, _ := strconv.ParseFloat(word, 64)
		inputs = append(inputs, val)
	}

	N := int(inputs[0])
	values := inputs[1:]
	sort.Float64s(values)
	var currentVal float64
	for i := 0; i < N; i++ {
		if i == 0 {
			currentVal = values[i]
			continue
		}
		currentVal = (currentVal + values[i]) / 2
	}
	fmt.Println(currentVal)
}
