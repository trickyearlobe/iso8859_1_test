# iso8859_1_test

This cookbook contains a template encoded as ISO8859-1 for testing upload, download, validation and other processing problems with Chef cookbooks.

When run, it should produce a file in `/tmp` which is ISO8859-1 encoded.
The tests should validate that the file is indeed ISO8859-1 encoded.

## Usage

Put the cookbook somewhere suitable for processing
Do your thing and observe what occurs.

If that thing is to run the tests in test-kitchen, simply run `kitchen converge`
A suitable `kitchen.yml` is provided for vagrant/virtualbox users.

## Common problems

* Your process doesn't support multibyte characters and is trying to validate `templates/iso8859-1.txt.erb`
* Your LANG environment variable (on Linux at least) is incorrectly set
  * Characters in `templates/iso8859-1.txt.erb` are not encoded for $LANG
  * Try `export LANG="en_US.ISO8859-1"` or some ISO8859-1 $LANG variant.
* Your process (or the libraries it depends on) assume `templates/iso8859-1.txt.erb` is encoded in UTF8 or ASCII
