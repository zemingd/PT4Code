ｖpackage main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Scan()
	ss := strings.Fields(sc.Text())

	A, _ := strconv.ParseUint(ss[0], 10, 64)
	B, _ := strconv.ParseFloat(ss[1], 64)

	result := uint64(math.Floor(float64(A) * B))
	fmt.Print(result)
}
ｖ