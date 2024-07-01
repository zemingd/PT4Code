package main

import (
	"bufio"
	"fmt"
	"os"
)

var stdin = bufio.NewScanner(os.Stdin)
var t string

func main() {
	stdin.Scan()
	t = stdin.Text()
	dfs(1, int(t[0]^'0'), t[0:1])
}

func dfs(i, data int, ans string) bool {
	if i == 4 {
		if data == 7 {
			fmt.Println(ans + "=7")
			return true
		}
		return false
	}
	if !dfs(i+1, data+int(t[i]^'0'), ans+"+"+t[i:i+1]) {
		return dfs(i+1, data-int(t[i]^'0'), ans+"-"+t[i:i+1])
	}
	return true
}