package main

import (
	"bufio"
	"fmt"
	"go/token"
	"go/types"
	"os"
	"strings"
)

var stdin = bufio.NewScanner(os.Stdin)
var op = []string{"+", "-"}

func main() {
	stdin.Scan()
	arr := strings.Split(stdin.Text(), "")
	for i := 0; i < 2; i++ {
		for j := 0; j < 2; j++ {
			for k := 0; k < 2; k++ {
				ev := arr[0] + op[i] + arr[1] + op[j] + arr[2] + op[k] + arr[3]
				result, _ := types.Eval(token.NewFileSet(), nil, token.NoPos, ev)
				if fmt.Sprintf("%v", result.Value) == "7" {
					fmt.Println(ev + "=7")
					return
				}
			}
		}
	}
}