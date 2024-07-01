package main

import (
    "fmt"
    "os"
    "bufio"
    "strconv"
    "sort"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
    sc.Split(bufio.ScanWords)

    n := nextInt()

    total := 0

    for i := 1; i <= n; i++ {
        if !(i%3==0 || i%5==0) {
            total += i
        }
    }

    fmt.Println(total)
}

// Library

//====================
//  var q Queue
//  q.Enqueue(n)
//  n := q.Dequeue()
//====================
type Queue struct {
    data []int
}

func (q *Queue) Enqueue(n int) {
    q.data = append(q.data, n)
}

func (q *Queue) Dequeue() int {
    tmp := q.data[0]
    q.data = q.data[1:]
    return tmp
}

func nextLine() string {
    sc.Scan()
    return sc.Text()
}

func nextInt() int {
    sc.Scan()
    i, _ := strconv.Atoi(sc.Text())
    return i
}

func nextIntArr(n int) []int {
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

func strReverse(s string) string {
    runes := []rune(s)
    for i := 0; i < len(s)/2; i++ {
        runes[i], runes[len(s)-1-i] = runes[len(s)-1-i], runes[i]
    }
    return string(runes)
}

