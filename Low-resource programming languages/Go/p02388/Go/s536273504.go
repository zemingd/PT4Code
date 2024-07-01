package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	var line string
	var lines []string
	for sc.Scan() {
		line = sc.Text()
		lines = append(lines, line)
	}
	err := sc.Err()
	if err != nil {
		log.Fatal(err)
	}
	x, err := strconv.Atoi(lines[0])
	if err != nil {
		log.Fatal(err)
	}
	result := math.Pow(float64(x), 3)
	fmt.Println(int(result))
}

