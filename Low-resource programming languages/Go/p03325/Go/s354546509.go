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
        maxEven := 0
        maxEvenIndex := -1
        for i := 0; i < len(a); i++ {
            if even(a[i]) {
                if maxEven < a[i] {
                    maxEven = a[i]
                    maxEvenIndex = i
                }
            }
        }
        if maxEvenIndex == -1 {
            break;
        }
        for i := 0; i < len(a); i++ {
            if i == maxEvenIndex {
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
