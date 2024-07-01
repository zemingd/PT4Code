package main

import (
        "bufio"
        "fmt"
        "os"
        "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
        sc.Scan()
        i, e := strconv.Atoi(sc.Text())
        if e != nil {
                panic(e)
        }
        return i
}

func swap(ns []int, n1 int, n2 int) []int {
        if ns[n1] > ns[n2] {
                tmp := ns[n1]
                ns[n1] = ns[n2]
                ns[n2] = tmp
        }
        return ns
}

func main() {
        sc.Split(bufio.ScanWords)
        a := nextInt()
        b := nextInt()
        c := nextInt()

        ns := []int{a, b, c}
        ns = swap(ns, 0, 1)
        ns = swap(ns, 1, 2)
        ns = swap(ns, 0, 1)
        fmt.Println(ns[0], ns[1], ns[2])
}
