package main
import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
	"unicode/utf8"
)
var sc = bufio.NewScanner(os.Stdin)
func nextLine() string {
	sc.Scan()
	return sc.Text()
}
func main() {
	firstLine := nextLine()
	split := strings.Split(firstLine, " ")
	if len(split) != 2 {
		fmt.Println("error")
	}
	N, _ := strconv.Atoi(split[0])
	L, _ := strconv.Atoi(split[1])
	var S []string
	i := 0
	for i < N {
		line := nextLine()
		if utf8.RuneCountInString(line) != L {
			fmt.Println("error")
			return
		}
		S = append(S, line)
		i++
	}
	sort.Strings(S)
	answer := ""
	for _, s := range S {
		answer = answer + s
	}
	fmt.Println(answer)
}