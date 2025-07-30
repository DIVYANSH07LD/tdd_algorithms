import 'dart:ffi';
import 'dart:math';

import 'package:tdd_algorithms/palindrome.dart';
import 'package:tdd_algorithms/prime_number.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  //check palindrome is true or not
  group('palindrome check', () {
    final palindrome = Palindrome();
    test('palindrome is true', () {
      expect(palindrome.isPalindrome('aba'), isTrue);
      expect(palindrome.isPalindrome('madam'), isTrue);
    });

    test('palindrome is false', () {
      expect(palindrome.isPalindrome('madams'), isFalse);
      expect(palindrome.isPalindrome('is, hi, mm, next'), isFalse);
    });
  });

  //prime number test method
  group('prime number ', () {
    final prime = Prime();
    test('return true prime number is valid', () {
      expect(prime.isPrime(2),isTrue);
      expect(prime.isPrime(3),isTrue);
      expect(prime.isPrime(5),isTrue);
      expect(prime.isPrime(7),isTrue);
    } );

    test('return false prime number is invalid', () {
      expect(prime.isPrime(4), isFalse);
      expect(prime.isPrime(4), isFalse);
      expect(prime.isPrime(6), isFalse);
      expect(prime.isPrime(8), isFalse);
      expect(prime.isPrime(12), isFalse);
    });

    test('return false prime number should be greater than 0', () {
      expect(prime.isPrime(-1), isFalse);
      expect(prime.isPrime(-9), isFalse);
      expect(prime.isPrime(-10), isFalse);
    });
  });
}
