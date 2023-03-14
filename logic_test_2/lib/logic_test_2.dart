String jump(
  int x1,
  int v1,
  int x2,
  int v2,
) {
  bool result;
  int point = 0;
  int limit = 10000;

  if ((v1 > v2) && (x2 - x1) % (v1 - v2) == 0) {
    result = true;
    while (point < limit) {
      x1 += v1;
      x2 += v2;
      if (x1 == x2) {
        break;
      }
      point++;
    }
  } else {
    result = false;
  }

  return result == true ? 'Bertemu di $x1' : 'Tidak Bertemu';
}
