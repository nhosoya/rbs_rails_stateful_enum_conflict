# rbs_rails + stateful_enum conflict reproduction

Minimal reproduction for the conflict between `rbs_rails` and `stateful_enum` gems.

## Problem

When using `stateful_enum`'s block syntax with `rbs_rails`, running `bundle exec rbs_rails models` fails:

```
❯ bundle exec rbs_rails models
Error: undefined method 'to_sym' for an instance of Array
```

## Environment

- Ruby 3.4.x
- Rails 8.1.2
- rbs_rails 0.13.0
- stateful_enum 0.9.0

## Steps to reproduce

```bash
git clone https://github.com/nhosoya/rbs_rails_stateful_enum_conflict
cd rbs_rails_stateful_enum_conflict
bundle install
bin/rails db:migrate
bundle exec rbs_rails models  # => Error
```
