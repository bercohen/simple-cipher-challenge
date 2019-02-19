# Shift Cipher challenge
### Your Goal
Your challenge is to complete a shift cipher challenge that can encode and decode simple phrases.
You will know that your have completed the challenge when all tests complete successfully.

### What is a shift cipher?
Shift ciphers are also called Caesar ciphers as they were used by Julius Caesar to scramble his messages to military personnel, so that they were purposefully unintelligible to any unintended reader.

Using a shift cipher is a simple and well-known (albeit usually insecure!) encryption technique, and a suitable topic for the focus of our challenge. In a simple shift cipher, a given input phrase is shifted by a certain number of characters so that it is no longer legible. 

When using a shift of `1`, each letter in the input text will be modified to the next letter. For example, we could encode:

`foobar` -> `gppcbs`

To decode, we can simply reverse the shift:

`gppcbs` -> `foobar`

When using a shift of `10`:

Encode: `foobar` -> `pyylkb`

Decode: `pyylkb` -> `foobar`


Our implementation of the shift cipher is a simple one:
- For encoding, the input text should be shifted by `n` characters, with a default shift of 1
- For decoding, encoded text should be shifted back and return the original input text.
- When a shift causes a letter to pass the end of the alphabet, it should wrap to the beginning. For example, `z` shifted by 1 should become `a`.

We have provided you with a `Cipher` class with two class methods: `encode` and `decode`.
Both methods take two arguments: `input` and `distance`. You will notice that the tests do not always specify `distance`, so a default may be necessary.

### To Download
Fork this repository to your own account or download it as a zip and extract the files.

### To Run
1. Open a terminal window and navigate to the challenge directory.
2. Run `gem install minitest`.
3. Run `ruby cipher_test.rb` to test the challenge. 
4. On the first run, Minitest should output the following:
```
n runs, 0 assertions, 0 failures, 0 errors, n skips
```

### To Complete
- The project contains two files: `cipher_test.rb` and `cipher.rb`. You will need to modify both of these files.
- Any code changes should be placed in `cipher.rb`. We have created a class in this file for you to build on.
- `skip` statements in `cipher_test.rb` should be commented out as you begin to test your code.
- You are encouraged to make this an iterative TDD process: comment out one _skip_ statement and run the tests to ensure they pass. Then proceed to the commenting out the next _skip_ statement and repeat the process.
- **The challenge is considered complete once all _skip_ statements are commented out and all tests pass** (_0 failures, 0 errors, 0 skips_).

### To Submit
  - If you forked the repository, ensure your repo is public, your changes are committed and pushed, and send us a link to your repository via email.
  - If you downloaded the repository as a zip file, zip your changes and send them to us via an email attachment.

### Troubleshooting
- Ensure you have ruby installed (`ruby -v`)
- Ensure you have minitest installed (`gem install minitest`)
- Ensure you are in the challenge directory

### About Us
The Cyndx platform harnesses the power of semantic search which is driven by our proprietary predictive analytics engine. We make data smarter, so that it can work harder and more effective for you, which ultimately allow you to find the right investments or investors to satisfy your needs, every time.

Learn more: https://www.cyndx.com

### Attribution
Simplified and adapted from the Exercism (https://exercism.io/) cipher exercise.
