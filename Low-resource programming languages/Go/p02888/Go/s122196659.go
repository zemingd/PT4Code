package main
import (
  "fmt"
  "os"
  "bufio"
  "strings"
  "strconv"
  "sort"
)

var f, _ = os.Open("input.txt")
var rdr = bufio.NewReaderSize(f, 1000000)
// var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func read_line() string {
    buf := make([]byte, 0, 1000000)
    for {
        l, p, e := rdr.ReadLine()
        if e != nil {
            panic(e)
        }
        buf = append(buf, l...)
        if !p {
            break
        }
    }
    return string(buf)
}

func upper(Ls [] int, val int) int {
    var low int = 0
    var high int = len(Ls)
    mid := (high + low) / 2
    for high - low > 1 {
        if Ls[mid] > val {
            high = mid
        } else {
            low = mid
        }
        mid = (high + low) / 2
    }

    if Ls[low] > val {
        return low
    }
    return high
}

func upper_equal(Ls [] int, val int) int {
    var low int = 0
    var high int = len(Ls)
    mid := (high + low) / 2
    for high - low > 1 {
        if Ls[mid] >= val {
            high = mid
        } else {
            low = mid
        }
        mid = (high + low) / 2
    }

    if Ls[low] >= val {
        return low
    }
    return high
}

func main() {
    // as := make([] int, 5)
    // for i, word := range strings.Split(read_line(), " ") {
    //     as[i], _ = strconv.Atoi(word)
    // }

    N, _ := strconv.Atoi(read_line())
    Ls := make([] int, N)
    for i, L := range strings.Split(read_line(), " ") {
        Ls[i], _ = strconv.Atoi(L)
    }

    sort.Ints(Ls)    

    var res int = 0
    for i := 0; i < N; i++ {
        for j := i + 1; j < N; j++ {
            max_index := upper_equal(Ls, Ls[j] + Ls[i])
            min_index := upper(Ls, Ls[j] - Ls[i])
            res += max_index - min_index
            if min_index <= i && i < max_index {
                res--
            }
            if min_index <= j && j < max_index {
                res--
            }
        }
    }

    fmt.Println(res / 3)
}