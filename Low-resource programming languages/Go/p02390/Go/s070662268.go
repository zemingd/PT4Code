package main

import(
	"os"
	"bufio"
	"strconv"
	"fmt"
)

func main() {
    var sc = bufio.NewScanner(os.Stdin)
    sc.Scan()
    s, _ := strconv.Atoi(sc.Text())
    h := s/3600
    m := (s%3600)/60
    s = (s%3600)%60
    fmt.Printf("%d:%d:%d",h,m,s)
}
