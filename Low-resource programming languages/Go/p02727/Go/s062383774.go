package main

import (
  "bufio"
  "container/heap"
  "fmt"
  "os"
  "strconv"
  "strings"
)

func main() {
  io := IO{bufio.NewReaderSize(os.Stdin,100000),bufio.NewWriterSize(os.Stdout,100)}
  x,y,a,b,c := io.NextInts()
  p := io.NextIntArray()
  q := io.NextIntArray()
  r := io.NextIntArray()
  var pq PriorityQueue
  heap.Init(&pq)
  for i:=0;i<a;i++ { heap.Push(&pq,&Item{p[i],0}) }
  for i:=0;i<b;i++ { heap.Push(&pq,&Item{q[i],1}) }
  for i:=0;i<c;i++ { heap.Push(&pq,&Item{r[i],2}) }
  n,np,nq := 0,0,0
  ans := int64(0)
  for n < x+y {
    it := heap.Pop(&pq).(*Item)
    if np == x && it.color == 0 { continue }
    if nq == y && it.color == 1 { continue }
    if it.color == 0 { np++ }
    if it.color == 1 { nq++ }
    n++
    ans += it.value
  }
  io.Println(ans)
  io.Flush()
}

type Item struct {
  value int64
  color int
}
type PriorityQueue []*Item
func(pq PriorityQueue) Len() int { return len(pq) }
func(pq PriorityQueue) Less(i,j int) bool { return pq[i].value > pq[j].value }
func(pq PriorityQueue) Swap(i,j int) { pq[i],pq[j] = pq[j],pq[i] }
func(pq *PriorityQueue) Push(x interface{}) {
  item := x.(*Item)
  *pq = append(*pq,item)
}
func(pq *PriorityQueue) Pop() interface{} {
  old := *pq
  n := len(old)
  item := old[n-1]
  *pq = old[0:n-1]
  return item
}

type IO struct {
  reader *bufio.Reader
  writer *bufio.Writer
}
func(io *IO) NextLine() string {
  var buffer []byte
  for {
    line,isPrefix,err := io.reader.ReadLine()
    if err != nil { panic(err) }
    buffer = append(buffer,line...)
    if !isPrefix { break }
  }
  return string(buffer)
}
func(io *IO) Println(a ...interface{}) (int,error) {
  return fmt.Fprintln(io.writer,a...)
}
func(io *IO) Flush() error {
  return io.writer.Flush()
}
func(io *IO) NextInts() (int,int,int,int,int) {
  s := strings.Fields(io.NextLine())
  x,_ := strconv.Atoi(s[0])
  y,_ := strconv.Atoi(s[1])
  a,_ := strconv.Atoi(s[2])
  b,_ := strconv.Atoi(s[3])
  c,_ := strconv.Atoi(s[4])
  return x,y,a,b,c
}
func(io *IO) NextIntArray() []int64 {
  s := strings.Fields(io.NextLine())
  a := make([]int64,len(s))
  for i:=0;i<len(s);i++ { a[i],_ = strconv.ParseInt(s[i],10,64) }
  return a
}
