package main
 
import (
	"bufio"
	"fmt"
	"os"
    "strconv"
)

// override by `ldflags`
var env = "online"

func checkLocal() bool {
	return env == "local"
}

func debugPrint(format string, args ...interface{}) {
	// debug out to stderr
	if checkLocal() {
		fmt.Fprintf(os.Stderr, format, args...)
	}
}

var (
	BufferSize = 10^9 + 10
)

func scanStr(sc *bufio.Scanner) string {
	if !sc.Scan() {
		panic(nil)
	}
	return sc.Text()
}

func scanInt(sc *bufio.Scanner) int {
	if !sc.Scan() {
		panic(nil)
	}
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getGcd(x, y int) int {
    if x < y {
		x, y = y, x
	}
	if y == 0 {
		return x
	} else {
		return getGcd(y, x%y)
	}
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

	n := scanInt(sc)
	price := make([]int, n)
	for i := 0; i < n; i++ {
		price[i] = scanInt(sc)
	}

	var min, max int
	min = price[0]
	max = -price[0]

	for i := 1; i < n; i++ {
		if max < price[i] - min {
			max = price[i] - min
		}
		if price[i] < min {
			min = price[i]
		}
	}
	fmt.Println(max)
}
