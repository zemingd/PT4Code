package main

import (
    "fmt"
    "os"
    "bufio"
    "strconv"
    "sort"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
    sc.Scan()
    return sc.Text()
}

func nextInt() int {
    sc.Scan()
    i, _ := strconv.Atoi(sc.Text())
    return i
}

func storeIntArr(n int) []int {
    var a []int
    for i := 0; i < n; i++ {
        a = append(a, nextInt())
    }
    return a
}

// 数値を桁区切りのスライスにする
func digit(n int, list []int) []int {
   if n > 0 {
       return digit(n/10, append(list, n%10))
   }
   return list
}

func sortIntsRev(list []int) {
    sort.Sort(sort.Reverse(sort.IntSlice(list)))
}


func main() {
    sc.Split(bufio.ScanWords)
    //sc.Split(bufio.ScanLines)

    n, y := nextInt(), nextInt()

    res10000, res5000, res1000 := -1, -1, -1

    for i := 0; i <= n; i++ {
        for j := 0; j <= n - i; j++ {
            k := n - i - j
            total := 10000*i + 5000*j + 1000*k
            if total == y {
                res10000 = i
                res5000 = j
                res1000 = k
            }
        }
    }

    fmt.Println(res10000, res5000, res1000)
}
