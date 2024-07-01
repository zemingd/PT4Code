package main

import (
    "fmt"
    "os"
    "bufio"
    "strconv"
    "sort"
)

var sc = bufio.NewScanner(os.Stdin)

var divide = [4]string{"dream", "dreamer", "erase", "eraser"}

func main() {
    s := nextLine()

    s = strReverse(s)
    for i := 0; i < len(divide); i++ {
        divide[i] = strReverse(divide[i])
    }

    i := 0
    f := true
    for i < len(s){
        f2 := false
        for _, str := range divide {
            if i+len(str)-1 < len(s) && s[i:i+len(str)] == str {
                i += len(str)
                f2 = true
                break
            }
        }
        if !f2 {
            f = false
            break
        }
    }

    if f {
        fmt.Println("YES")
    } else {
        fmt.Println("NO")
    }

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

func strReverse(s string) string {
    runes := []rune(s)
    for i := 0; i < len(s)/2; i++ {
        runes[i], runes[len(s)-1-i] = runes[len(s)-1-i], runes[i]
    }
    return string(runes)
}

