import std.functional,
       std.algorithm,
       std.bigint,
       std.string,
       std.traits,
       std.array,
       std.range,
       std.stdio,
       std.conv;

void main() {
  long n = readln.chomp.to!long;
  long[] A = readln.chomp.split.to!(long[]);
  long[long] h;
  long x = -1,
       y = -1;

  foreach (e; A) {
    if (e !in h) {
      h[e] = 1;
    } else {
      h[e]++;
    }
  }

  long[] keys = h.keys.sort!"a>b".array;

  foreach (k; keys) {
    if (x != -1 && y != -1) { break; }

    if (x == -1 && h[k] >= 2) {
      x = k;
      h[k] -= 2;
    }

    if (x != -1 && y == -1 && h[k] >= 2) {
      y = k;
      h[k] -= 2;
    } 
  }

  if (x == -1 || y == -1) {
    writeln(0);
    return;
  } else {
    writeln(x * y);
  }
}
