package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func getNextLine(scanner *bufio.Reader) string {
	var buffer string
	for {
		line, isPrefix, _ := scanner.ReadLine()
		buffer += string(line)
		if isPrefix == false {
			break
		}
	}
	return buffer
}

func getIntList(scanner *bufio.Reader) []int {
	list := strings.Split(getNextLine(scanner), " ")
	l := len(list)
	result := make([]int, l)
	for i := 0; i < l; i++ {
		result[i], _ = strconv.Atoi(list[i])
	}
	return result
}

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := bufio.NewReader(fp)

	var n int
	fmt.Sscan(getNextLine(scanner), &n)
	uvw := make([][]int, n-1)
	color:=make([]int,n+1)
	for i := 0; i < n-1; i++ {
		uvw[i]= getIntList(scanner)
		u:=uvw[i][0]
		v:=uvw[i][1]
		w:=uvw[i][2]
		if w % 2 == 1{
			if color[u] == 0{
				color[v] = 1
				continue
			}
			color[u]=1
			continue
		}
		if color[u] == 1{
			color[v] = 1
			continue
		}
		if color[v] == 1{
			color[u] = 1
		}
	}

	for i := 1; i < n; i++ {
		fmt.Println(color[i])
	}
}
