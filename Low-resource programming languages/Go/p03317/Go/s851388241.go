package main

import "os"
import "fmt"
import "bufio"
import "strconv"

func main() {
    var sc = bufio.NewScanner(os.Stdin)
    sc.Split(bufio.ScanWords)
    sc.Scan()
    n, _ := strconv.Atoi(sc.Text())
    sc.Scan()
    k, _ := strconv.Atoi(sc.Text())
    a := []int{}
    for i := 0; i < n; i++ {
        sc.Scan()
        num, _ := strconv.Atoi(sc.Text())
        a = append(a, num)
    }

    r := (n - 1) / (k - 1)

    fmt.Printf("%d\n", r)
}
