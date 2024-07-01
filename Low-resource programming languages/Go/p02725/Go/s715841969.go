package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readLine() string {
	buf := make([]byte, 0, 1000000)
	for {
		l, p, e := rdr.ReadLine()
		if e != nil {
			panic(e)
		}
		buf = append(buf, l...)
		if !p {
			break
		}
	}
	return string(buf)
}
func main() {
	line := readLine()
	words := strings.Split(line, " ")
	k, _ := strconv.Atoi(words[0])
	//n, _ := strconv.Atoi(words[1])
	line = readLine()
	words = strings.Split(line, " ")
	a := make([]int, len(words))
	for i, word := range words {
		a[i], _ = strconv.Atoi(word)
	}
	maxDistance := 0
	for i := 1; i < len(a); i++ {
		distance := a[i] - a[i-1]
		if distance > maxDistance {
			maxDistance = distance
		}
	}
	distance := a[0] + k - a[len(a)-1]
	if distance > maxDistance {
		maxDistance = distance
	}
	fmt.Println(k - maxDistance)

}
