package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func getScanner(fp *os.File) *bufio.Scanner {
	scanner := bufio.NewScanner(fp)
	scanner.Split(bufio.ScanWords)
	scanner.Buffer(make([]byte, 500001), 500000)
	return scanner
}

func getNextString(scanner *bufio.Scanner) string {
	scanner.Scan()
	return scanner.Text()
}

func getNextInt(scanner *bufio.Scanner) int {
	i, _ := strconv.Atoi(getNextString(scanner))
	return i
}

func getNextInt64(scanner *bufio.Scanner) int64 {
	i, _ := strconv.ParseInt(getNextString(scanner), 10, 64)
	return i
}

func main() {
	fp := os.Stdin
	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
	}

	scanner := getScanner(fp)

	writer := bufio.NewWriter(os.Stdout)

	a := getNextInt(scanner)
	b := getNextInt(scanner)
	c := getNextInt(scanner)
	d := getNextInt(scanner)
	e := getNextInt(scanner)
	f := getNextInt(scanner)

	max := 0.0

	ans1 := 0
	ans2 := 0
	for i := 0; i*a*100 <= f; i++ {
		w1 := i * a * 100
		for ii := 0; w1+ii*b*100 <= f; ii++ {
			w2 := ii * b * 100
			for iii := 0; w1+w2+iii*c <= f; iii++ {
				s1 := iii * c
				for iiii := 0; w1+w2+s1+iiii*d <= f; iiii++ {
					s2 := iiii * d
					if (s1+s2)*100 > (w1+w2)*e {
						break
					}
					n := float64(s1+s2) / float64(w1+w2+s1+s2)
					if max <= n {
						max = n
						ans1 = w1 + w2 + s1 + s2
						ans2 = s1 + s2
					}
				}
			}
		}
	}

	fmt.Fprintln(writer, fmt.Sprintf("%d %d", ans1, ans2))

	writer.Flush()
}
