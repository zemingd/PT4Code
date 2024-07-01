package main
import (
	"fmt"
	"bufio"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	S := nextLine()
	if S == "SUN" {
		fmt.Println(7)
	} else if S == "MON" {
		fmt.Println(6)
	} else if S == "TUE" {
		fmt.Println(5)
	} else if S == "WED" {
		fmt.Println(4)
	} else if S == "THU" {
		fmt.Println(3)
	} else if S == "FRI" {
		fmt.Println(2)
	} else {
		fmt.Println(1)
	}
}