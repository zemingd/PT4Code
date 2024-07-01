package main

import (
	"bufio"
	"fmt"
	"log"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	n := readInt()
	a := readInt()
	b := readInt()
	fmt.Println(math.Min(float64(n*a), float64(b)))
}

func checkErr(err error) {
	if err != nil {
		log.Fatal(err)
	}
}

func toInt(s string) int {
	i, e := strconv.Atoi(s)
	checkErr(e)
	return i
}

func nextLine(scanner *bufio.Scanner) string {
	scanner.Scan()
	return scanner.Text()
}

func readInt() int {
	var num int
	_, e := fmt.Scan(&num)
	checkErr(e)
	return num
}

func readStr() string {
	var str string
	_, e := fmt.Scan(&str)
	checkErr(e)
	return str
}

func readLineAsStr() string {
	var scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanLines)
	return nextLine(scanner)
}

func readLineAsInts() []int {
	var scanner = bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanLines)
	s := strings.Split(nextLine(scanner), " ")
	ints := make([]int, len(s))
	for i, str := range s {
		ints[i] = toInt(str)
	}
	return ints
}
