# Unhandled JSON Decoding Exception in Dart

This example demonstrates a common error in Dart applications that use the `http` package to fetch JSON data. The code attempts to access a key ('someKey') from the JSON response without checking if the key exists or if the response is valid JSON. This can lead to an unexpected `FormatException` or `NoSuchMethodError` if the JSON is malformed or missing the expected key.

The solution includes robust error handling to prevent crashes and provide informative error messages to the user.