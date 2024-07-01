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
    a := []int{}
    for i := 0; i < n; i++ {
        sc.Scan()
        num, _ := strconv.Atoi(sc.Text())
        a = append(a, num)
    }

    count := 0
    for true {
        maxEven := -1
        for i := 0; i < len(a); i++ {
            if even(a[i]) {
                maxEven = max(maxEven, a[i])
            }
        }
        if maxEven == -1 {
            break;
        }
        for i := 0; i < len(a); i++ {
            if a[i] == maxEven {
                a[i] = a[i] / 2
            } else {
                a[i] = a[i] * 3
            }
        }
        count++
    }

    fmt.Printf("%d\n", count)
}

func even(v int) bool {
    return v / 2 * 2 == v
}

func max(a int, b int) int {
    if a > b {
        return a
    } else {
        return b
    }
}
