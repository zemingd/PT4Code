package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"
	"bufio"
)

var sc = bufio.NewScanner(os.Stdin)
var buf = make([]byte, 1000)

func inputLine() string{
	sc.Scan()
	return sc.Text()
}

func scanInt() int {
	out, e := strconv.Atoi(inputLine())
	if e != nil {
        panic(e)
    }
	return out
}

func scanIntArray(n int) []int {
	out := make([]int, n)
	for i, v := range(strings.Split(inputLine(), " ")) {
		num, e := strconv.Atoi(v)
		if e != nil {
			panic(e)
		}
		out[i] = num
	}
	return out
}
//  template end

func f(numbers string, sum int, ans string){
	num_s := string(numbers[0])
	num, _ := strconv.Atoi(num_s)
	if len(numbers) != 1 {
		if ans == "" {
			f(numbers[1:], sum+num, string(num_s))
		} else {
			ans_p := ans + "+" + num_s
			ans_n := ans + "-" + num_s
			f(numbers[1:], sum+num, ans_p)
			f(numbers[1:], sum-num, ans_n)
		}
	} else {
		if sum+num == 7 {
			ans := ans + "+" + num_s + "=7"
			fmt.Println(ans)
			os.Exit(0)
		} else if sum-num == 7 {
			ans := ans + "-" + num_s + "=7"
			fmt.Println(ans)
			os.Exit(0)
		}
	}
}

func main() {
	sc.Buffer(buf, 10000)
	abcd := inputLine()
	f(abcd, 0, "")

}