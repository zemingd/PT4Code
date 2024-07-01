package main

import(
    "os"
    "bufio"
    "strconv"
    "fmt"
    "sort"
)

func main() {
    var sc = bufio.NewScanner(os.Stdin)
    n := []int{0,0,0}
    sc.Split(bufio.ScanWords)
    sc.Scan()
    n[0], _ = strconv.Atoi(sc.Text())
    sc.Scan()
    n[1], _ = strconv.Atoi(sc.Text())
    sc.Scan()
    n[2], _ = strconv.Atoi(sc.Text())
    sort.Sort(sort.IntSlice(n))
    fmt.Println(fmt.Sprintf("%d %d %d",n[0],n[1],n[2]))
}
