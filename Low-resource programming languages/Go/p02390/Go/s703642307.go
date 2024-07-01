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

	s := scanInt(sc)
	fmt.Printf("%d:%d:%d\n", s/3600, (s%3600)/60, s%60)
}
