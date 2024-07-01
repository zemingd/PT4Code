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

	if len(os.Args) > 1 {
		fp, _ = os.Open(os.Args[1])
		if len(os.Args) > 2 {
			wfp, _ = os.Create(os.Args[2])
		}
	}

	scanner := getScanner(fp)
	writer := bufio.NewWriter(wfp)

	x := getNextInt(scanner)
	y := getNextInt(scanner)
	if (x+y)%3 != 0 || x > 2*y || y > x*2 {
		fmt.Println(0)
		return
	}

	c := (x + y) / 3
	cm := CombinationMod{}
	cm.init(c)

	fmt.Fprintln(writer, cm.calc(c, x-c))
	writer.Flush()
}

// CombinationMod ...
type CombinationMod struct {
	n, mod   int64
	fac, inv []int64
}

func (cm *CombinationMod) init(n int) {
	cm.n = int64(n)
	cm.fac = make([]int64, n+1)
	cm.inv = make([]int64, n+1)
	cm.fac[0] = 1
	cm.mod = int64(1e9 + 7)
	var i int64
	for i = 1; i < cm.n+1; i++ {
		cm.fac[i] = (cm.fac[i-1] * i) % cm.mod
	}
	cm.inv[n] = cm.calcInv(cm.fac[n])
	for i = cm.n - 1; i >= 0; i-- {
		cm.inv[i] = (cm.inv[i+1] * i) % cm.mod
	}
}

func (cm *CombinationMod) calcInv(n int64) int64 {
	if n == 1 {
		return 1
	}
	var a, b, x, y int64
	a = cm.mod
	b = n
	x = 1
	y = -a / b

	stack := [][]int64{
		[]int64{
			x, y,
		},
	}
	for a%b > 0 {
		a, b = b, a%b
		x = 1
		y = -a / b
		stack = append(stack, []int64{
			x, y,
		})
	}

	for i := len(stack) - 2; i > 0; i-- {
		stack[i-1][0] *= stack[i][1]
		stack[i-1][1] *= stack[i][1]
		stack[i-1][1] += stack[i][0]
	}

	ans := stack[0][1] % cm.mod
	if ans < 0 {
		ans += cm.mod
	}

	return ans
}

func (cm *CombinationMod) calc(n, m int) int64 {
	ans := (cm.fac[n] * ((cm.inv[m] * cm.inv[n-m]) % cm.mod)) % cm.mod
	return ans
}
