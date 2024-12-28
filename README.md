# Unhandled JSON Key Access in Dart

This repository demonstrates a common error in Dart when handling JSON responses: attempting to access a key that might not exist in the JSON data.  The `bug.dart` file contains the erroneous code, and `bugSolution.dart` provides a corrected version.

The issue is that directly accessing `jsonResponse['nonExistentKey']` will throw an exception if the 'nonExistentKey' does not exist within the JSON data. This can lead to app crashes or unexpected behavior.  Proper error handling is crucial.

## How to reproduce the bug
1. Run `bug.dart`.
2. Observe the error message when the non-existent key is accessed.

## Solution
The `bugSolution.dart` file shows the corrected code.  It adds checks to verify the existence of the key before accessing it, preventing the exception.