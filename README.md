# Incubyte TDD Assessment
This repository contains a simple String Calculator built using Test-Driven Development (TDD) principles in Ruby. The calculator supports various input formats and custom delimiters, as outlined in the requirements.

## Features
Accepts a comma-separated string of numbers and returns their sum.
Supports newline characters as delimiters, allowing flexible input formats.
Allows custom delimiters specified at the beginning of the input string.
Throws an error for any negative numbers in the input, specifying all negative numbers in the error message.

## Project Setup

### Prerequisites
Ruby: Ensure Ruby is installed (version 3.1 or later recommended).
Bundler: If not installed, install Bundler by running:

## Usage

```ruby
gem install bundler
```

## Installation
1. Clone the repository:

```
git clone https://github.com/dilip49/incubyte-tdd-assessment.git
```
2. Navigate to the project directory:

```
cd incubyte-tdd-assessment
```
2. Install dependencies:
```
bundle install
```

## Running Tests
The project uses RSpec for testing. To run the test suite:
```
bundle exec rspec
```

## Test Coverage
This project uses SimpleCov for test coverage reporting. After running the tests, a coverage report is generated in the coverage directory. To view it, open coverage/index.html in a browser.

## Code Quality
The project uses RuboCop for linting. To check for style issues, run:

```
bundle exec rubocop
```

To autocorrect linting issues where possible:
```
bundle exec rubocop -A
```