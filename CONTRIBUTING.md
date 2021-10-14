# Contributing to Processing (for Crystal)

Welcome! We're glad you're here and excited for your contributions!

This project is a faithful port of [Processing](https://processing.org/) to [Crystal](https://crystal-lang.org/).
This project is still in its infancy and we're looking for contributors to help it grow.
Now is a great time to join and influence its course.

**Table of Contents**

- [Useful links](#useful-links)
- [How can I contribute?](#how-can-i-contribute)
  - [Help wanted](#help-wanted)
  - [How to submit changes](#how-to-submit-changes)
  - [How to report a bug](#how-to-report-a-bug)
  - [Where can I get help?](#where-can-i-get-help)
- [Development](#development)
  - [Testing](#testing)
  - [Style guide and conventions](#style-guide-and-conventions)

## Useful links

Here are some useful links:

- [README](README.md)
- [Issue tracker](https://github.com/icy-arctic-fox/processing.cr/issues)
- [Processing](https://processing.org/)
  - [API Reference](https://processing.org/reference)
  - [Source Code](https://github.com/processing/processing4/tree/master/core/src/processing/core)
- [Crystal](https://crystal-lang.org/)
  - [Crystal API](https://crystal-lang.org/api/)
- [SDL Shard](https://github.com/ysbaddaden/sdl.cr)

## How can I contribute?

This project is still in its early stages.
Most features and the Processing API still need to be implemented.
There's a lot to do, find something that interests you!
Take a look at the [open issues](https://github.com/icy-arctic-fox/processing.cr/issues).
Any issue not assigned can be picked up.
Even if one is already assigned, you may still be able to help out, just ask!

Also check out the [help wanted](#help-wanted) section below.
If there isn't an issue for something you want to add or change, please create one first.
Additionally, there is a feature checklist in the [README](README.md).

### Help Wanted

These are the area that maintainers are looking to tackle next.
These are quite substantial, but assistance would be greatly appreciated!

- [Mock/stub rendering](https://github.com/icy-arctic-fox/processing.cr/issues/2) - Need a way to reliably test visual aspects.
- Implement various parts of the Processing API.
- Methods marked as not implemented. These can be found by running `git grep -C 1 not_implemented`.

### How to submit changes

Submit your changes as a pull request.
Please keep change requests focused on a single feature or bug.
Larger pull requests may be broken up into logical pieces.
This helps reviewers digest the changes.

Describe the purpose of the change, what it addresses.
Provide links to related issues, bugs the changes fix, or external resources (i.e. Processing docs).
Note any significant items or breaking changes.
Include a snippet of code demonstrating the code, if applicable.

Please include tests for new code and bug fixes.
Some items are harder to test than others.
Check out the [testing](#testing) section for more information.

### How to report a bug

Be sure you can reproduce the issue.
Try to reduce the amount of code and complexity needed to reproduce the issue.
Check of outstanding issues, it might already be reported.

[Open an issue](https://github.com/icy-arctic-fox/processing.cr/issues/new).
Provide information on what you're trying to do.
Include source code that reproduces the issue.
Add any specific details or specifics about your usage and environment.
For instance: using Windows, compiling with specific flags, dependencies on other shards, custom helper code, etc.

## Where can I get help?

First checkout the [README](README.md), [issues](https://github.com/icy-arctic-fox/processing.cr/issues),
and [discussions](https://github.com/icy-arctic-fox/processing.cr/discussions).
There might already be some information to help you along.

Look for existing issues before creating a new one.
We use issues for bugs, features, and general help/support.
You might find something that addresses your issue or points you in the right direction.
Adding a :+1: to the original issue is appreciated!

If you can't find anything already out there, submit an issue.
Explain what you're trying to do and maybe an explanation of why.

## Development

To get started:

1. [Fork the repository](https://github.com/icy-arctic-fox/processing/fork)
2. Clone the forked git repository.
3. Install SDL2. See the [install docs](https://wiki.libsdl.org/Installation) for details.
4. Run `shards` in the repository to pull developer dependencies.
5. Verify everything works by running `crystal spec` and some examples.

### Testing

[Spectator](https://github.com/icy-arctic-fox/spectator) is used for testing.
Please try to write tests for any new features that are added.
Bugs should have tests created for them to combat regression.

The `spec/` directory contains all tests.
Sub-directories match the directory structure under `src/`.
Working examples and sample code can be found under `examples/`.

We haven't worked out yet how best to test graphical components.
Until then, please write some working sample code in `examples/` for new features.

### Style guide and conventions

This is a faithful port of Processing.
As such, all functions and classes should match their original specification.
However, some types are better suited to use from the Crystal standard library.
Names and some Java concepts should be "crystalized."

General Crystal styling should be used.
To ensure everything is formatted correctly, run `crystal tool format` prior to committing.

Additionally, [Ameba](https://crystal-ameba.github.io/) is used to encourage best coding practices.
To run Ameba, run `bin/ameba` in the root of the repository.
This requires that shards have been installed.

Exceptions can be made for some Ameba issues.
Adding `#ameba:disable` to a line will [disable Ameba](https://crystal-ameba.github.io/ameba/#inline-disabling) for a particular issue.
However, please prefer to fix the issue instead of ignoring them.

Please attempt to document every class and public method.
Documentation isn't required on private methods and trivial code.
Please add comments explaining algorithms and complex code.
