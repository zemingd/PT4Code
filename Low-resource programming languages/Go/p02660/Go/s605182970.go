package main

import (
	"bufio"
	. "fmt"
	"os"
	"strconv"
)

var (
	inn = bufio.NewScanner(os.Stdin)
	out = bufio.NewWriter(os.Stdout)
)

func main() {
	defer out.Flush()
	inn.Buffer([]byte{}, 1000000)
	inn.Split(bufio.ScanWords)
	//prep
    n:=rdll();
    ans:=0;
    for f:=int64(2);int64(f)*int64(f)<=n;f++{
        if(n%f==0){
            cnt:=0;
            for n%f==0{
                cnt++;
                n/=f;
            }
            now:=1;
            for cnt>=now{
                cnt-=now;
                ans++;
                now++;
            }
        }
    }
    if n>1{
        ans++;
    }
    Fprint(out,ans);
}

//-------------------template------------------
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func maxll(a, b int64) int64 {
	if a > b {
		return a
	}
	return b
}
func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func minll(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}
func rd() (x int) {
	inn.Scan()
	x, _ = strconv.Atoi(string(inn.Bytes()))
	return x
}
func rdll() (x int64) {
	inn.Scan()
	x, _ = strconv.ParseInt(string(inn.Bytes()), 10, 64)
	return x
}
func rds() string {
	inn.Scan()
	return string(inn.Bytes())
}

