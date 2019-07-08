# ez-changelog [![Build Status](https://travis-ci.org/dcchambers/ez-changelog.svg?branch=master)](https://travis-ci.org/dcchambers/ez-changelog)
Generate simple changelogs based on your repo's git log.

## Usage
`$ ruby ezcl.rb`

## Dependencies
- [ruby-git](https://github.com/ruby-git/ruby-git)
  - `$ sudo gem install git`
or
- `$ bundle install`

## Example
```
~/Development/ez-changelog ⚡️ ruby ezcl.rb
                ~ ezcl ~                 
Generating a changelog from your git log.
Enter CHANGELOG file name: CHANGELOG.md
Enter path to git repo: .
~/Development/ez-changelog ⚡️ cat CHANGELOG.md
# CHANGELOG

- feat: Fix list format in changelog output
- feat: Let user enter path to git repo
- Add feature to let user name changelog file
- Create/Open CHANGELOG file for writing
- Testing ruby-git gem
- Initial commit
~/Development/ez-changelog ⚡️
```
