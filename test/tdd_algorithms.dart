import 'package:tdd_algorithms/palindrome.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main(){
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
}