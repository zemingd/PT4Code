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

func getNextUint64(scanner *bufio.Scanner) uint64 {
	i, _ := strconv.ParseUint(getNextString(scanner), 10, 64)
	return i
}

func getNextFloat64(scanner *bufio.Scanner) float64 {
	i, _ := strconv.ParseFloat(getNextString(scanner), 64)
	return i
}

func main() {
	fp := os.Stdin
	wfp := os.Stdout

	if os.Getenv("MASPY") == "ますピ" {
		fp, _ = os.Open(os.Getenv("BEET_THE_HARMONY_OF_PERFECT"))
	}
	if os.Getenv("MASPYPY") == "ますピッピ" {
		wfp, _ = os.Create(os.Getenv("NGTKANA_IS_GENIUS10"))
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(wfp)

	x := getNextInt(scanner)
	y := getNextInt(scanner)

	if x > y {
		x, y = y, x
	}
	if x*2 < y || (x+y)%3 != 0 {
		fmt.Println(0)
		return
	}

	c := (x + y) / 3
	cm := Com{}
	cm.init(c)

	fmt.Fprintln(writer, cm.calc(c, x-c))
	writer.Flush()
}

// Com ...
type Com struct {
	facs, invs []int64
	mod        int64
}

func (cm *Com) init(n int) {
	cm.facs = make([]int64, n+1)
	cm.invs = make([]int64, n+1)

	cm.facs[0] = 1
	cm.mod = int64(1e9 + 7)
	cm.invs[0] = cm.inv(cm.facs[0])
	for i := 1; i <= n; i++ {
		cm.facs[i] = (cm.facs[i-1] * int64(i)) % cm.mod
		cm.invs[i] = cm.inv(cm.facs[i])
	}
}

func (cm *Com) inv(n int64) int64 {
	var ii [32]int64
	ii[0] = n
	for i := 1; i < 31; i++ {
		ii[i] = (ii[i-1] * ii[i-1]) % cm.mod
	}
	var ans int64
	ans = 1
	m := cm.mod - 2
	for i := 30; i >= 0; i-- {
		for m >= 1<<uint(i) {
			ans = (ans * ii[i]) % cm.mod
			m -= 1 << uint(i)
		}
	}

	return ans
}

func (cm *Com) calc(n, k int) int64 {
	ans := cm.facs[n] * cm.invs[k]
	ans %= cm.mod
	ans = ans * cm.invs[n-k]
	ans %= cm.mod
	return ans
}
