package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

const (
	maxBufsize = 1000000
)

func inputs(lines int) []string {
	var strSlice []string

	rdr := bufio.NewReaderSize(os.Stdin, maxBufsize)

	for i := 0; i < lines; i++ {

		line := ReadLine(rdr)
		strSlice = append(strSlice, line)

	}

	return strSlice
}

// ReadLine is to read long line
func ReadLine(rdr *bufio.Reader) string {
	buf := make([]byte, 0, maxBufsize)
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
	line1 := inputs(1)

	lineSlice := strings.Split(line1[0], " ")

	n, _ := strconv.Atoi(lineSlice[0])

	k, _ := strconv.Atoi(lineSlice[1])

	if n <= k {
		if 1 <= k {
			//if math.Abs(float64(k-n)) < float64(n) {
			if (k - n) < n {
				fmt.Println("1")
			} else {
				fmt.Println("0")
			}
		} else {
			fmt.Println("0")
		}
		return
	}

	result := n / k
	amari := n % k
	if (result + 1) < n {
		//if math.Abs(float64((result+1)*k-n)) < float64(amari) {
		if ((result+1)*k - n) < amari {
			fmt.Printf("%d\n", (result+1)*k-n)
		} else {
			fmt.Printf("%d\n", amari)
		}

	} else {
		fmt.Printf("%d\n", amari)
	}
	return
}