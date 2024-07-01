package main

import (
        "bufio"
        "fmt"
        "os"
        "sort"
        "strconv"
        "strings"
)

////////////////////////////////////////
///        templates                 ///
////////////////////////////////////////

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
        sc.Scan()
        return sc.Text()
}

var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func readBigLine() string {
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

func strSprit(str string) []string {
        cols := strings.Split(str, " ")
        return cols
}

func parseInt(str string) int {
        n, _ := strconv.Atoi(str)
        return n
}

func intSprit(str string) []int {
        strs := strSprit(str)
        cols := make([]int, len(strs))
        for i, v := range strs {
                cols[i] = parseInt(v)
        }
        return cols
}

////////////////////////////////////////
///        end templates             ///
////////////////////////////////////////

type Pair struct {
        h, c int
}

type Pairs []Pair

func (p Pairs) Len() int {
        return len(p)
}
func (p Pairs) Less(i, j int) bool {
        return p[i].h < p[j].h
}
func (p Pairs) Swap(i, j int) {
        p[i], p[j] = p[j], p[i]
}

func main() {
        line := nextLine()

        spl := intSprit(line)

        N := spl[0]
        K := spl[1]

        m := make(map[int]int, N)

        for i := 0; i < N; i++ {
                n := parseInt(nextLine())
                if _, ok := m[n]; ok {
                        m[n] += 1
                } else {
                        m[n] = 1
                }
        }
        nums := []Pair{}

        for h, v := range m {
                nums = append(nums, Pair{h, v})
        }

        sort.Sort(Pairs(nums))

        t := 0
        l := 0
        r := 1
        min := 1000000000
        if nums[0].c > K {
                fmt.Println(0)
        } else {
                t += nums[0].c
        }
        for i := 1; i < len(nums); i++ {
                t += nums[i].c
                r = i
                if t >= K {
                        for t >= K {
                                if nums[r].h-nums[l].h < min {
                                        min = nums[r].h - nums[l].h
                                }
                                t -= nums[l].c
                                l++
                        }
                }
        }
        fmt.Println(min)
}

