package main

import (
  "fmt"
  "bufio"
  "os"
)

type Op struct {
  x, y uint16
  step uint16
}

func main() {
  // constant
  const invalidValue uint16 = 0x8000
  dir4_x := [4]uint16{0xffff, 0, 1, 0}
  dir4_y := [4]uint16{0, 0xffff, 0, 1}
  
  // h, w
  var h, w uint16
  var x, y uint16
  fmt.Scan(&h)
  fmt.Scan(&w)

  // read grid
  reader := bufio.NewReaderSize(os.Stdin, 1024)
  grid := make([][]byte, h)
  for y = 0; y < h; y++ {
    line, _, _ := reader.ReadLine()
    grid[y] = make([]byte, len(line))
    copy(grid[y], line)
  }

  bfsQueue := make([]Op, 0, 1000*1000)
  var stepMap [1000][1000]uint16
  // Queue first step
  for y = 0; y < h; y++ {
    for x = 0; x < w; x++ {
      stepMap[y][x] = invalidValue
      // fmt.Printf("x%d y%d %c\n", x, y, grid[y][x])
      if grid[y][x] == '#' {
        bfsQueue = append(bfsQueue, Op{x, y, 1})
      }
    }
  }
  
  // bfs
  var op Op
  var nx, ny uint16
  for len(bfsQueue) > 0 {
    op, bfsQueue = bfsQueue[0], bfsQueue[1:]
    for i := range dir4_x {
      nx = op.x + dir4_x[i]
      ny = op.y + dir4_y[i]
      if nx >= w || ny >= h {
        continue
      }
      if grid[ny][nx] == '.' && stepMap[ny][nx] > op.step {
        stepMap[ny][nx] = op.step
        bfsQueue = append(bfsQueue, Op{nx, ny, op.step + 1})
        // fmt.Printf("%v nx%d ny%d\n", op, nx, ny)
      }
    }
  }
  
  // count
  var maxStep uint16 = 0
  var n uint16
  for y = 0; y < h; y++ {
    for x = 0; x < w; x++ {
      n = stepMap[y][x] & 0x7fff
      if n > maxStep {
        maxStep = n
      }
    }
  }

  fmt.Println(maxStep)
}
