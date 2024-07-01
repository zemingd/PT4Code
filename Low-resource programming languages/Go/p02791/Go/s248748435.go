package main

import (
	"fmt"
	"bufio"
	"os"
	"strings"
	"strconv"
)

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func main() {
	//stdin := bufio.NewScanner(os.Stdin)
	input1 :=  splitAndAtoi(readLine())
	n := input1[0]
	
	input2 :=  splitAndAtoi(readLine())
	p := input2

	r := 0
	for i:=0; i<n; i++ {
		pi := p[i]
		for j:=0; j<= i; j++ {
			pj := p[j]
			if (pi > pj) {
				break
			}

			if j == i {
				r++
			}
		}
	}
	fmt.Printf("%d", r)
}


func splitAndAtoi(s string) []int {
	ss := strings.Split(s, " ")
	var r []int
	for _, s := range ss {
		i, _ := strconv.Atoi(s)
		r = append(r, i)
	}

	return r
}

func nextNumber(s *bufio.Scanner) int {
	i, _ := strconv.Atoi(nextLine(s))
	return i
}

func nextLine(s *bufio.Scanner) string {
	s.Scan()
	return s.Text()
}

func debug(s string) {
	fmt.Println(s)
}

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