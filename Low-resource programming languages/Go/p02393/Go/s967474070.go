package main
 
import (
	"bufio"
	"fmt"
	"os"
    "strconv"
    "sort"
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
	BufferSize = 100 + 10
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

func main() {
	sc := bufio.NewScanner(os.Stdin)
	buf := make([]byte, BufferSize)
	sc.Buffer(buf, BufferSize)
	sc.Split(bufio.ScanWords)

    length := 3
    a := make([]int, length)
    for i := 0; i < length; i++ {
        a[i] = scanInt(sc)
    }
    sort.Ints(a)
    for _, i := range a {
        fmt.Printf("%d ", i)
    }
    fmt.Printf("\n")
}
