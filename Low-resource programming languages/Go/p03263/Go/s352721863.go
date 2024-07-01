package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	iv, _ := strconv.Atoi(sc.Text())
	return iv
}

func init() {
	sc.Split(bufio.ScanWords)
}

func isEven(x int) bool {
	return x%2 == 0
}

func isOdd(x int) bool {
	return !isEven(x)
}

func main() {
	h, w := readInt(), readInt()
	a := make([][]int, h)
	for i := range a {
		a[i] = make([]int, w)
		for j := range a[i] {
			a[i][j] = readInt()
		}
	}

	cnt := 0
	var wr = bufio.NewWriter(os.Stdout)
	for i := range a {
		if isEven(i) {
			for j := range a[i][:len(a[i])-1] {
				if isOdd(a[i][j]) {
					wr.WriteString(strconv.Itoa(i+1) + " " + strconv.Itoa(j+1) + " " + strconv.Itoa(i+1) + " " + strconv.Itoa(j+2) + "\n")
					a[i][j]--
					a[i][j+1]++
					cnt++
				}
			}
			if lai := len(a[i]) - 1; i != len(a)-1 && isOdd(a[i][lai]) {
				wr.WriteString(strconv.Itoa(i+1) + " " + strconv.Itoa(lai+1) + " " + strconv.Itoa(i+2) + " " + strconv.Itoa(lai+1) + "\n")
				a[i][lai]--
				a[i+1][lai]++
				cnt++
			}
		} else {
			for j := len(a[i]) - 1; j > 0; j-- {
				if isOdd(a[i][j]) {
					wr.WriteString(strconv.Itoa(i+1) + " " + strconv.Itoa(j+1) + " " + strconv.Itoa(i+1) + " " + strconv.Itoa(j) + "\n")
					a[i][j]--
					a[i][j-1]++
					cnt++
				}
			}
			if i != len(a)-1 && isOdd(a[i][0]) {
				wr.WriteString(strconv.Itoa(i+1) + " 1 " + strconv.Itoa(i+2) + " 1\n")
				a[i][0]--
				a[i+1][0]++
				cnt++
			}
		}
	}
	fmt.Println(cnt)
	wr.Flush()
}
