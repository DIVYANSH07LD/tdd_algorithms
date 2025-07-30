//prime number
class Prime {
  bool isPrime(int value) {
    if (value <= 1) {
      return false;
    }
    for (int i = 2; i * i <= value; i++) {
      if (value % 2 == 0) {
        return false;
      }
    }
    return true;
  }
}
