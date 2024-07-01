package main
import (
    "fmt"
    "bufio"
    "os"
)

var r = bufio.NewReader(os.Stdin)

func main() {
	var S int
	fmt.Fscan(r, &S)
    s := S%60
    M := S/60
    m := M%60
    h := M/60
    fmt.Printf("%v:%v:%v\n",h,m,s)
}

